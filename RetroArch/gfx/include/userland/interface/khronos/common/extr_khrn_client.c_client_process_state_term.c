
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int inited; int global_image_egl_images; int syncs; int windows; int surfaces; int contexts; } ;
typedef TYPE_1__ CLIENT_PROCESS_STATE_T ;


 int callback_destroy_context ;
 int callback_destroy_surface ;
 int egl_driver_monitor_term (TYPE_1__*) ;
 int egl_perf_monitor_term (TYPE_1__*) ;
 int egl_sync_destroy_all (int *) ;
 int khrn_global_image_map_term (int *) ;
 int khrn_pointer_map_iterate (int *,int ,int *) ;
 int khrn_pointer_map_term (int *) ;

void client_process_state_term(CLIENT_PROCESS_STATE_T *process)
{
   if (process->inited) {
      khrn_pointer_map_iterate(&process->contexts, callback_destroy_context, ((void*)0));
      khrn_pointer_map_term(&process->contexts);

      khrn_pointer_map_iterate(&process->surfaces, callback_destroy_surface, ((void*)0));
      khrn_pointer_map_term(&process->surfaces);

      khrn_pointer_map_term(&process->windows);
      process->inited = 0;
   }
}
