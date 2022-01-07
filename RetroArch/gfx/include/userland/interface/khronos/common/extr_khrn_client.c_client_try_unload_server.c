
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ context_current_count; int connected; scalar_t__ inited; } ;
struct TYPE_5__ {int (* khrn_misc_try_unload_impl ) () ;} ;
typedef TYPE_1__ KHRONOS_FUNC_TABLE_T ;
typedef int CLIENT_THREAD_STATE_T ;
typedef TYPE_2__ CLIENT_PROCESS_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int KHRNMISCTRYUNLOAD_ID ;
 int RPC_CALL0_RES (int ,int *,int ) ;
 int RPC_INT_RES (int ) ;
 int client_library_get_connection () ;
 int khrn_misc_try_unload_impl ;
 int khronos_server_disconnect () ;
 TYPE_1__* khronos_server_lock_func_table (int ) ;
 int khronos_server_unlock_func_table () ;
 int stub1 () ;

void client_try_unload_server(CLIENT_PROCESS_STATE_T *process)
{
   if (
      (process->context_current_count != 0) ||

      process->inited) {
      return;
   }
   {
      CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
      RPC_INT_RES(RPC_CALL0_RES(khrn_misc_try_unload_impl, thread, KHRNMISCTRYUNLOAD_ID));
   }

}
