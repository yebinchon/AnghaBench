
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vnode_t ;
typedef int * vfs_context_t ;
typedef int user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int length; int sub_tag; int tag; } ;
typedef TYPE_1__ kd_chunk_header_v3 ;
typedef int caddr_t ;


 int KERN_SUCCESS ;
 int RAW_file_offset ;
 int assert (int) ;
 int copyout (TYPE_1__*,int ,int) ;
 int kdbg_write_to_vnode (int ,int,int *,int *,int) ;

int
kdbg_write_v3_chunk_header(user_addr_t buffer, uint32_t tag, uint32_t sub_tag, uint64_t length, vnode_t vp, vfs_context_t ctx)
{
 int ret = KERN_SUCCESS;
 kd_chunk_header_v3 header = {
  .tag = tag,
  .sub_tag = sub_tag,
  .length = length,
 };


 assert(!buffer ^ !vp);
 assert((vp == ((void*)0)) || (ctx != ((void*)0)));


 if (buffer || vp) {
  if (vp) {
   ret = kdbg_write_to_vnode((caddr_t)&header, sizeof(kd_chunk_header_v3), vp, ctx, RAW_file_offset);
   if (ret) {
    goto write_error;
   }
   RAW_file_offset += (sizeof(kd_chunk_header_v3));
  }
  else {
   ret = copyout(&header, buffer, sizeof(kd_chunk_header_v3));
   if (ret) {
    goto write_error;
   }
  }
 }
write_error:
 return ret;
}
