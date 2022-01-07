
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int master; int serversync; } ;
typedef TYPE_1__ EGL_SYNC_T ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int EGLINTDESTROYSYNC_ID ;
 scalar_t__ EGL_SYNC_FENCE_KHR ;
 int RPC_CALL1 (int ,int *,int ,int ) ;
 int RPC_UINT (int ) ;
 int eglIntDestroySync_impl ;
 int khronos_platform_semaphore_destroy (int *) ;

__attribute__((used)) static void egl_sync_term(EGL_SYNC_T *sync_master)
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();



   {
      RPC_CALL1(eglIntDestroySync_impl,
                thread,
                EGLINTDESTROYSYNC_ID,
                RPC_UINT(sync_master->serversync));
   }
   khronos_platform_semaphore_destroy(&sync_master->master);
}
