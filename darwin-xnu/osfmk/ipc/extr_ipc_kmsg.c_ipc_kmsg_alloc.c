
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_size_t ;
typedef int mach_msg_ool_descriptor32_t ;
typedef int mach_msg_base_t ;
typedef scalar_t__ ipc_kmsg_t ;


 int DESC_SIZE_ADJUSTMENT ;
 scalar_t__ IKM_NULL ;
 int IKM_SAVED_MSG_SIZE ;
 int MACH_MSG_SIZE_MAX ;
 int MAX_TRAILER_SIZE ;
 int ikm_init (scalar_t__,int) ;
 int ikm_plus_overhead (int) ;
 int ikm_set_header (scalar_t__,int) ;
 int ipc_kmsg_max_body_space ;
 int ipc_kmsg_zone ;
 scalar_t__ kalloc (int ) ;
 scalar_t__ zalloc (int ) ;

ipc_kmsg_t
ipc_kmsg_alloc(
 mach_msg_size_t msg_and_trailer_size)
{
 mach_msg_size_t max_expanded_size;
 ipc_kmsg_t kmsg;
 mach_msg_size_t size = msg_and_trailer_size - MAX_TRAILER_SIZE;


 if (size > ipc_kmsg_max_body_space)
  return IKM_NULL;

 if (size > sizeof(mach_msg_base_t)) {
  mach_msg_size_t max_desc = (mach_msg_size_t)(((size - sizeof(mach_msg_base_t)) /
               sizeof(mach_msg_ool_descriptor32_t)) *
               DESC_SIZE_ADJUSTMENT);


  if (msg_and_trailer_size > MACH_MSG_SIZE_MAX - max_desc)
   return IKM_NULL;

  max_expanded_size = msg_and_trailer_size + max_desc;
 } else
   max_expanded_size = msg_and_trailer_size;

 if (max_expanded_size < IKM_SAVED_MSG_SIZE)
  max_expanded_size = IKM_SAVED_MSG_SIZE;

 if (max_expanded_size == IKM_SAVED_MSG_SIZE) {
  kmsg = (ipc_kmsg_t)zalloc(ipc_kmsg_zone);
 } else {
  kmsg = (ipc_kmsg_t)kalloc(ikm_plus_overhead(max_expanded_size));
 }

 if (kmsg != IKM_NULL) {
  ikm_init(kmsg, max_expanded_size);
  ikm_set_header(kmsg, msg_and_trailer_size);
 }

 return(kmsg);
}
