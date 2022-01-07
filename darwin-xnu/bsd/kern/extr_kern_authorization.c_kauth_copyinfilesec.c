
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int u_int32_t ;
struct kauth_ace {int dummy; } ;
typedef TYPE_1__* kauth_filesec_t ;
typedef int caddr_t ;
struct TYPE_6__ {scalar_t__ fsec_magic; int fsec_entrycount; } ;


 int AUDIT_ARG (int ,TYPE_1__*,size_t) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ KAUTH_ACL_MAX_ENTRIES ;
 scalar_t__ KAUTH_FILESEC_MAGIC ;
 int KAUTH_FILESEC_NOACL ;
 int KAUTH_FILESEC_SIZE (int) ;
 int PAGE_MASK ;
 int copyin (int,int ,size_t) ;
 TYPE_1__* kauth_filesec_alloc (int) ;
 int kauth_filesec_free (TYPE_1__*) ;
 int mach_vm_round_page (int) ;
 int opaque ;

int
kauth_copyinfilesec(user_addr_t xsecurity, kauth_filesec_t *xsecdestpp)
{
 int error;
 kauth_filesec_t fsec;
 u_int32_t count;
 size_t copysize;

 error = 0;
 fsec = ((void*)0);
 {
  user_addr_t known_bound = (xsecurity & PAGE_MASK) + KAUTH_FILESEC_SIZE(0);
  user_addr_t uaddr = mach_vm_round_page(known_bound);
  count = (uaddr - known_bound) / sizeof(struct kauth_ace);
 }
 if (count > 32)
  count = 32;
restart:
 if ((fsec = kauth_filesec_alloc(count)) == ((void*)0)) {
  error = ENOMEM;
  goto out;
 }
 copysize = KAUTH_FILESEC_SIZE(count);
 if ((error = copyin(xsecurity, (caddr_t)fsec, copysize)) != 0)
  goto out;


 if (fsec->fsec_magic != KAUTH_FILESEC_MAGIC) {
  error = EINVAL;
  goto out;
 }




 if ((fsec->fsec_entrycount != KAUTH_FILESEC_NOACL) &&
     (fsec->fsec_entrycount > count)) {
  if (fsec->fsec_entrycount > KAUTH_ACL_MAX_ENTRIES) {

   error = EINVAL;
   goto out;
  }
  count = fsec->fsec_entrycount;
  kauth_filesec_free(fsec);
  goto restart;
 }

out:
 if (error) {
  if (fsec)
   kauth_filesec_free(fsec);
 } else {
  *xsecdestpp = fsec;
  AUDIT_ARG(opaque, fsec, copysize);
 }
 return(error);
}
