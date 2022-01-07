
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int mach_voucher_attr_raw_recipe_array_t ;
typedef int mach_msg_option_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_voucher_t ;
typedef int ipc_voucher_attr_recipe_data_t ;
typedef int ipc_voucher_attr_raw_recipe_array_size_t ;
typedef TYPE_2__* ipc_kmsg_t ;
struct TYPE_9__ {scalar_t__ ip_kobject; } ;
struct TYPE_8__ {TYPE_4__* ikm_voucher; TYPE_1__* ikm_header; } ;
struct TYPE_7__ {int msgh_bits; } ;


 int FALSE ;
 int IP_VALID (TYPE_4__*) ;
 int IVAM_FLAGS_SUPPORT_RECEIVE_POSTPROCESS ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_MOVE_SEND ;
 int MACH_RCV_VOUCHER ;
 int MACH_VOUCHER_ATTR_AUTO_REDEEM ;
 int MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN ;
 int assert (int) ;
 TYPE_4__* convert_voucher_to_port (scalar_t__) ;
 scalar_t__ current_task () ;
 scalar_t__ ipc_create_mach_voucher (int *,int,scalar_t__*) ;
 int ipc_port_release_send (TYPE_4__*) ;
 scalar_t__ ipc_voucher_prepare_processing_recipe (scalar_t__,int ,int*,int ,int ,int*) ;
 scalar_t__ kernel_task ;

void
ipc_voucher_receive_postprocessing(
 ipc_kmsg_t kmsg,
 mach_msg_option_t option)
{
 uint8_t recipes[(MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN + 1) * sizeof(ipc_voucher_attr_recipe_data_t)];
 ipc_voucher_attr_raw_recipe_array_size_t recipe_size = (MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN + 1) *
      sizeof(ipc_voucher_attr_recipe_data_t);
 ipc_voucher_t recv_voucher;
 ipc_voucher_t sent_voucher;
 kern_return_t kr;
 int need_postprocessing = FALSE;

 if ((option & MACH_RCV_VOUCHER) == 0 || (!IP_VALID(kmsg->ikm_voucher)) ||
      current_task() == kernel_task) {
  return;
 }


 sent_voucher = (ipc_voucher_t)kmsg->ikm_voucher->ip_kobject;

 kr = ipc_voucher_prepare_processing_recipe(sent_voucher,
  (mach_voucher_attr_raw_recipe_array_t)recipes,
  &recipe_size, MACH_VOUCHER_ATTR_AUTO_REDEEM,
  IVAM_FLAGS_SUPPORT_RECEIVE_POSTPROCESS, &need_postprocessing);

 assert(KERN_SUCCESS == kr);




 if (need_postprocessing) {
  kr = ipc_create_mach_voucher(recipes,
          recipe_size,
          &recv_voucher);
  assert(KERN_SUCCESS == kr);

  kmsg->ikm_header->msgh_bits |= (MACH_MSG_TYPE_MOVE_SEND << 16);
  ipc_port_release_send(kmsg->ikm_voucher);
  kmsg->ikm_voucher = convert_voucher_to_port(recv_voucher);
 }
}
