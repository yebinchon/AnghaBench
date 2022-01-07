
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int inited; } ;
struct TYPE_6__ {int error; } ;
typedef scalar_t__ EGLDisplay ;
typedef scalar_t__ EGLBoolean ;
typedef TYPE_1__ CLIENT_THREAD_STATE_T ;
typedef TYPE_2__ CLIENT_PROCESS_STATE_T ;


 TYPE_2__* CLIENT_GET_PROCESS_STATE () ;
 int EGL_BAD_DISPLAY ;
 int EGL_NOT_INITIALIZED ;

CLIENT_PROCESS_STATE_T *client_egl_get_process_state(CLIENT_THREAD_STATE_T *thread, EGLDisplay dpy, EGLBoolean check_inited)
{
   if ((size_t)dpy == 1) {
      CLIENT_PROCESS_STATE_T *process = CLIENT_GET_PROCESS_STATE();

      if (check_inited && !process->inited) {
         thread->error = EGL_NOT_INITIALIZED;
         return ((void*)0);
      } else
         return process;
   } else {
      thread->error = EGL_BAD_DISPLAY;
      return ((void*)0);
   }
}
