
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t vm_size_t ;
struct vnode {int v_label; } ;
struct image_params {TYPE_1__* ip_cs_error; int ip_origcputype; } ;
struct cs_blob {int dummy; } ;
typedef TYPE_1__* os_reason_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int kern_return_t ;
typedef int cpu_type_t ;
struct TYPE_5__ {int osr_flags; int osr_kcd_descriptor; } ;


 int CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG ;
 int CPU_TYPE_ANY ;
 int EXIT_REASON_USER_DESC ;
 int KERN_SUCCESS ;
 int MAC_CHECK (int ,struct vnode*,int ,int ,struct cs_blob*,unsigned int*,unsigned int*,int,char**,size_t*) ;
 size_t MAXPATHLEN ;
 int OS_REASON_CODESIGNING ;
 int OS_REASON_FLAG_CONSISTENT_FAILURE ;
 int OS_REASON_FLAG_GENERATE_CRASH_REPORT ;
 TYPE_1__* OS_REASON_NULL ;
 scalar_t__ kalloc (size_t) ;
 int kcdata_estimate_required_buffer_size (int,size_t) ;
 int kcdata_get_memory_addr (int *,int ,size_t,scalar_t__*) ;
 int kcdata_memcpy (int *,scalar_t__,char*,size_t) ;
 int kfree (char*,size_t) ;
 int mac_proc_enforce ;
 int mac_vnode_enforce ;
 int os_reason_alloc_buffer_noblock (TYPE_1__*,int ) ;
 TYPE_1__* os_reason_create (int ,int ) ;
 int panic (char*,char const*,size_t,char*) ;
 int printf (char*,char const*,...) ;
 scalar_t__ vn_getpath (struct vnode*,char*,int*) ;
 int vnode_check_signature ;

int
mac_vnode_check_signature(struct vnode *vp, struct cs_blob *cs_blob,
          struct image_params *imgp,
          unsigned int *cs_flags, unsigned int *signer_type,
          int flags)
{
  int error;
  char *fatal_failure_desc = ((void*)0);
  size_t fatal_failure_desc_len = 0;

  char *vn_path = ((void*)0);
  vm_size_t vn_pathlen = MAXPATHLEN;
  cpu_type_t cpu_type = (imgp == ((void*)0)) ? CPU_TYPE_ANY : imgp->ip_origcputype;
  MAC_CHECK(vnode_check_signature, vp, vp->v_label, cpu_type, cs_blob,
      cs_flags, signer_type, flags, &fatal_failure_desc, &fatal_failure_desc_len);

  if (fatal_failure_desc_len) {



    char const *path = ((void*)0);

    vn_path = (char *)kalloc(MAXPATHLEN);
    if (vn_path != ((void*)0)) {
    if (vn_getpath(vp, vn_path, (int*)&vn_pathlen) == 0) {
      path = vn_path;
    } else {
      path = "(get vnode path failed)";
    }
    } else {
    path = "(path alloc failed)";
    }

    if (error == 0) {
    panic("mac_vnode_check_signature: MAC hook returned no error, "
      "but status is claimed to be fatal? "
      "path: '%s', fatal_failure_desc_len: %ld, fatal_failure_desc:\n%s\n",
      path, fatal_failure_desc_len, fatal_failure_desc);
    }

    printf("mac_vnode_check_signature: %s: code signature validation failed fatally: %s",
     path, fatal_failure_desc);

    if (imgp == ((void*)0)) {
    goto out;
    }

    os_reason_t reason = os_reason_create(OS_REASON_CODESIGNING,
                CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG);

    if (reason == OS_REASON_NULL) {
    printf("mac_vnode_check_signature: %s: failure to allocate exit reason for validation failure: %s\n",
       path, fatal_failure_desc);
    goto out;
    }

    imgp->ip_cs_error = reason;
    reason->osr_flags = (OS_REASON_FLAG_GENERATE_CRASH_REPORT |
           OS_REASON_FLAG_CONSISTENT_FAILURE);

    if (fatal_failure_desc == ((void*)0)) {

    printf("mac_vnode_check_signature: %s: fatal failure is missing its description.\n", path);
    } else {
    mach_vm_address_t data_addr = 0;

    int reason_error = 0;
    int kcdata_error = 0;

    if ((reason_error = os_reason_alloc_buffer_noblock(reason, kcdata_estimate_required_buffer_size
                   (1, fatal_failure_desc_len))) == 0 &&
      (kcdata_error = kcdata_get_memory_addr(&reason->osr_kcd_descriptor,
                   EXIT_REASON_USER_DESC, fatal_failure_desc_len,
                   &data_addr)) == KERN_SUCCESS) {
      kern_return_t mc_error = kcdata_memcpy(&reason->osr_kcd_descriptor, (mach_vm_address_t)data_addr,
                   fatal_failure_desc, fatal_failure_desc_len);

      if (mc_error != KERN_SUCCESS) {
        printf("mac_vnode_check_signature: %s: failed to copy reason string "
         "(kcdata_memcpy error: %d, length: %ld)\n",
         path, mc_error, fatal_failure_desc_len);
      }
    } else {
      printf("mac_vnode_check_signature: %s: failed to allocate space for reason string "
         "(os_reason_alloc_buffer error: %d, kcdata error: %d, length: %ld)\n",
         path, reason_error, kcdata_error, fatal_failure_desc_len);
    }

    }
  }

out:
  if (vn_path) {
    kfree(vn_path, MAXPATHLEN);
  }

  if (fatal_failure_desc_len > 0 && fatal_failure_desc != ((void*)0)) {
    kfree(fatal_failure_desc, fatal_failure_desc_len);
  }

  return (error);
}
