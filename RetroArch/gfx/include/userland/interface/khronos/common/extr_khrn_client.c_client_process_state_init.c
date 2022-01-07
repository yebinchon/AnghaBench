
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int make_current_func; } ;
struct TYPE_5__ {int inited; int next_surface; int next_context; int next_sync; int next_global_image_egl_image; int perf_monitor_inited; int connected; TYPE_2__ khrn_connection; int global_image_egl_images; int windows; int surfaces; int contexts; int syncs; } ;
typedef TYPE_1__ CLIENT_PROCESS_STATE_T ;


 int RPC_CALL0 (int ,int *,int ) ;
 int client_library_send_make_current ;
 int egl_config_install_configs (int) ;
 int khrn_global_image_map_init (int *,int) ;
 int khrn_misc_startup_impl ;
 int khrn_pointer_map_init (int *,int) ;
 int khrn_pointer_map_term (int *) ;
 int khronos_server_connect (TYPE_2__*) ;
 int khronos_server_lock_func_table (TYPE_2__*) ;
 int khronos_server_unlock_func_table () ;
 int no_id ;

bool client_process_state_init(CLIENT_PROCESS_STATE_T *process)
{
   if (!process->inited) {
      if (!khrn_pointer_map_init(&process->contexts, 64))
         return 0;

      if (!khrn_pointer_map_init(&process->surfaces, 64))
      {
         khrn_pointer_map_term(&process->contexts);
         return 0;
      }
      if (!khrn_pointer_map_init(&process->windows, 64))
      {
         khrn_pointer_map_term(&process->contexts);
         khrn_pointer_map_term(&process->surfaces);
         return 0;
      }
      process->next_surface = 1;
      process->next_context = 1;
      process->inited = 1;
   }





   egl_config_install_configs(0);



   return 1;
}
