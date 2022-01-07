
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_msg_timeout_t ;
typedef int mach_msg_size_t ;
typedef scalar_t__ mach_msg_return_t ;
typedef int mach_msg_option_t ;
typedef int mach_msg_header_t ;
typedef int ipc_kmsg_t ;
struct TYPE_2__ {int options; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_MACH_IPC ;
 int KDBG (int,...) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_IPC_KMSG_INFO ;
 scalar_t__ MACH_MSG_SUCCESS ;
 int MACH_SEND_IMPORTANCE ;
 int MACH_SEND_NOIMPORTANCE ;
 int TH_OPT_SEND_IMPORTANCE ;
 TYPE_1__* current_thread () ;
 scalar_t__ ipc_kmsg_copyin_from_kernel (int ) ;
 int ipc_kmsg_destroy (int ) ;
 int ipc_kmsg_free (int ) ;
 scalar_t__ ipc_kmsg_get_from_kernel (int *,int ,int *) ;
 scalar_t__ ipc_kmsg_send (int ,int,int ) ;

mach_msg_return_t
mach_msg_send_from_kernel_with_options(
 mach_msg_header_t *msg,
 mach_msg_size_t send_size,
 mach_msg_option_t option,
 mach_msg_timeout_t timeout_val)
{
 ipc_kmsg_t kmsg;
 mach_msg_return_t mr;

 KDBG(MACHDBG_CODE(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_START);

 mr = ipc_kmsg_get_from_kernel(msg, send_size, &kmsg);
 if (mr != MACH_MSG_SUCCESS) {
  KDBG(MACHDBG_CODE(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END, mr);
  return mr;
 }

 mr = ipc_kmsg_copyin_from_kernel(kmsg);
 if (mr != MACH_MSG_SUCCESS) {
  ipc_kmsg_free(kmsg);
  KDBG(MACHDBG_CODE(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END, mr);
  return mr;
 }
 if (current_thread()->options & TH_OPT_SEND_IMPORTANCE)
  option &= ~MACH_SEND_NOIMPORTANCE;
 else if ((option & MACH_SEND_IMPORTANCE) == 0)
  option |= MACH_SEND_NOIMPORTANCE;

 mr = ipc_kmsg_send(kmsg, option, timeout_val);

 if (mr != MACH_MSG_SUCCESS) {
  ipc_kmsg_destroy(kmsg);
  KDBG(MACHDBG_CODE(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END, mr);
 }

 return mr;
}
