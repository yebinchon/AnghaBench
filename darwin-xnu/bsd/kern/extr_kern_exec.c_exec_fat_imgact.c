
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef void* user_size_t ;
typedef size_t uint32_t ;
struct image_params {int ip_vdata; int ip_origcpusubtype; int ip_origcputype; void* ip_arch_size; void* ip_arch_offset; int ip_vp; scalar_t__ ip_px_sa; int ip_vfs_context; } ;
struct fat_header {int magic; } ;
struct fat_arch {int cpusubtype; int cputype; scalar_t__ size; scalar_t__ offset; } ;
struct _posix_spawnattr {scalar_t__* psa_binprefs; } ;
typedef int proc_t ;
typedef scalar_t__ load_return_t ;
typedef int kauth_cred_t ;
typedef scalar_t__ cpu_type_t ;


 scalar_t__ CPU_TYPE_ANY ;
 int EBADARCH ;
 int EBADEXEC ;
 scalar_t__ FAT_MAGIC ;
 int IO_NODELOCKED ;
 int IO_UNIT ;
 scalar_t__ LOAD_SUCCESS ;
 size_t NBINPREFS ;
 scalar_t__ OSSwapBigToHostInt32 (int ) ;
 int PAGE_SIZE ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 scalar_t__ fatfile_getbestarch (int ,int,struct fat_arch*) ;
 scalar_t__ fatfile_getbestarch_for_cputype (scalar_t__,int ,int,struct fat_arch*) ;
 scalar_t__ fatfile_validate_fatarches (int ,int) ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int load_return_to_errno (scalar_t__) ;
 int memset (int,int,int) ;
 int vfs_context_proc (int ) ;
 int vn_rdwr (int ,int ,int,int,scalar_t__,int ,int,int ,int*,int ) ;

__attribute__((used)) static int
exec_fat_imgact(struct image_params *imgp)
{
 proc_t p = vfs_context_proc(imgp->ip_vfs_context);
 kauth_cred_t cred = kauth_cred_proc_ref(p);
 struct fat_header *fat_header = (struct fat_header *)imgp->ip_vdata;
 struct _posix_spawnattr *psa = ((void*)0);
 struct fat_arch fat_arch;
 int resid, error;
 load_return_t lret;

 if (imgp->ip_origcputype != 0) {

  error = -1;
  goto bad;
 }


 if (OSSwapBigToHostInt32(fat_header->magic) != FAT_MAGIC) {
  error = -1;
  goto bad;
 }


 lret = fatfile_validate_fatarches((vm_offset_t)fat_header, PAGE_SIZE);
 if (lret != LOAD_SUCCESS) {
  error = load_return_to_errno(lret);
  goto bad;
 }


 psa = (struct _posix_spawnattr *) imgp->ip_px_sa;
 if (psa != ((void*)0) && psa->psa_binprefs[0] != 0) {
  uint32_t pr = 0;


  for (pr = 0; pr < NBINPREFS; pr++) {
   cpu_type_t pref = psa->psa_binprefs[pr];
   if (pref == 0) {

    error = EBADARCH;
    goto bad;
   }

   if (pref == CPU_TYPE_ANY) {

    goto regular_grading;
   }

   lret = fatfile_getbestarch_for_cputype(pref,
       (vm_offset_t)fat_header,
       PAGE_SIZE,
       &fat_arch);
   if (lret == LOAD_SUCCESS) {
    goto use_arch;
   }
  }


  error = EBADEXEC;
  goto bad;
 }

regular_grading:

 lret = fatfile_getbestarch((vm_offset_t)fat_header,
    PAGE_SIZE,
    &fat_arch);
 if (lret != LOAD_SUCCESS) {
  error = load_return_to_errno(lret);
  goto bad;
 }

use_arch:

 error = vn_rdwr(UIO_READ, imgp->ip_vp, imgp->ip_vdata,
   PAGE_SIZE, fat_arch.offset,
   UIO_SYSSPACE, (IO_UNIT|IO_NODELOCKED),
   cred, &resid, p);
 if (error) {
  goto bad;
 }

 if (resid) {
  memset(imgp->ip_vdata + (PAGE_SIZE - resid), 0x0, resid);
 }


 error = -2;
 imgp->ip_arch_offset = (user_size_t)fat_arch.offset;
 imgp->ip_arch_size = (user_size_t)fat_arch.size;
 imgp->ip_origcputype = fat_arch.cputype;
 imgp->ip_origcpusubtype = fat_arch.cpusubtype;

bad:
 kauth_cred_unref(&cred);
 return (error);
}
