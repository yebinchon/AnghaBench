
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int windows; } ;
typedef scalar_t__ EGLNativeWindowType ;
typedef int CLIENT_THREAD_STATE_T ;
typedef TYPE_1__ CLIENT_PROCESS_STATE_T ;


 int khrn_pointer_map_lookup (int *,int ) ;

EGLNativeWindowType client_egl_get_window(CLIENT_THREAD_STATE_T *thread, CLIENT_PROCESS_STATE_T *process, EGLNativeWindowType window)
{
   EGLNativeWindowType win = (EGLNativeWindowType)khrn_pointer_map_lookup(&process->windows, (uint32_t)(size_t)window);

   return win;
}
