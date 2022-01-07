
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* uint32_t ;
typedef int msg ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ header; void* pid_hi; void* pid_lo; } ;
typedef TYPE_1__ WFC_IPC_MSG_SET_CLIENT_PID_T ;
typedef int VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 int WFC_IPC_MSG_SET_CLIENT_PID ;
 int vcos_log_trace (char*,int ,void*,void*) ;
 int vcos_process_id_current () ;
 int wfc_client_ipc_send (TYPE_2__*,int) ;

__attribute__((used)) static VCOS_STATUS_T wfc_client_ipc_send_client_pid(void)
{
   WFC_IPC_MSG_SET_CLIENT_PID_T msg;
   uint64_t pid = vcos_process_id_current();
   uint32_t pid_lo = (uint32_t) pid;
   uint32_t pid_hi = (uint32_t) (pid >> 32);

   msg.header.type = WFC_IPC_MSG_SET_CLIENT_PID;
   msg.pid_lo = pid_lo;
   msg.pid_hi = pid_hi;

   vcos_log_trace("%s: setting client pid to 0x%x%08x", VCOS_FUNCTION, pid_hi, pid_lo);

   return wfc_client_ipc_send(&msg.header, sizeof(msg));
}
