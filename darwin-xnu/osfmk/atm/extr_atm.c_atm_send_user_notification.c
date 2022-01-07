
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int thread_t ;
typedef int mach_port_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_atm_subaid_t ;
typedef int kern_return_t ;
typedef int aid_t ;


 int IPC_PORT_VALID (int ) ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int MACH_SEND_TIMED_OUT ;
 int atm_collect_trace_info (int ,int ,int ,int ,int *,int ,int *,int ) ;
 int current_thread () ;
 int host_get_atm_notification_port (int ,int *) ;
 int host_priv_self () ;
 int ipc_port_release_send (int ) ;
 int thread_clear_honor_qlimit (int ) ;
 int thread_set_honor_qlimit (int ) ;

kern_return_t
atm_send_user_notification(
 aid_t aid,
 mach_atm_subaid_t sub_aid,
 mach_port_t *buffers_array,
 uint64_t *sizes_array,
 mach_msg_type_number_t count,
 uint32_t flags)
{
 mach_port_t user_port;
 int error;
 thread_t th = current_thread();
 kern_return_t kr;

 error = host_get_atm_notification_port(host_priv_self(), &user_port);
 if ((error != KERN_SUCCESS) || !IPC_PORT_VALID(user_port)) {
  return KERN_FAILURE;
 }

 thread_set_honor_qlimit(th);
 kr = atm_collect_trace_info(user_port, aid, sub_aid, flags, buffers_array, count, sizes_array, count);
 thread_clear_honor_qlimit(th);

 if (kr != KERN_SUCCESS) {
  ipc_port_release_send(user_port);

  if (kr == MACH_SEND_TIMED_OUT) {
   kr = KERN_SUCCESS;
  }
 }

 return kr;
}
