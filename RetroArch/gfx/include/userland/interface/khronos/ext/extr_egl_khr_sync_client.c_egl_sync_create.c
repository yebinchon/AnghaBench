
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int* name; int master; int serversync; scalar_t__ status; scalar_t__ type; scalar_t__ threshold; scalar_t__ condition; } ;
typedef scalar_t__ EGLint ;
typedef scalar_t__ EGLenum ;
typedef TYPE_1__ EGL_SYNC_T ;
typedef scalar_t__ EGLSyncKHR ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int EGLINTCREATESYNCFENCE_ID ;
 int EGLINTCREATESYNC_ID ;
 scalar_t__ EGL_SYNC_FENCE_KHR ;
 scalar_t__ KHR_SUCCESS ;
 int RPC_CALL3 (int ,int *,int ,int ,int ,int ) ;
 int RPC_CALL4_RES (int ,int *,int ,int ,int ,int ,int ) ;
 int RPC_INT (scalar_t__) ;
 int RPC_UINT (scalar_t__) ;
 int RPC_UINT_RES (int ) ;
 int eglIntCreateSyncFence_impl ;
 int eglIntCreateSync_impl ;
 int khrn_platform_free (TYPE_1__*) ;
 scalar_t__ khrn_platform_malloc (int,char*) ;
 scalar_t__ khronos_platform_semaphore_create (int *,int*,int ) ;
 int khronos_platform_semaphore_destroy (int *) ;
 int rpc_get_client_id (int *) ;

__attribute__((used)) static EGL_SYNC_T *egl_sync_create(EGLSyncKHR sync, EGLenum type,
      EGLint condition, EGLint threshold, EGLint status)
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
   EGL_SYNC_T *sync_ptr = (EGL_SYNC_T *)khrn_platform_malloc(sizeof(EGL_SYNC_T), "EGL_SYNC_T");
   uint64_t pid = rpc_get_client_id(thread);
   uint32_t sem;

   if (!sync_ptr)
      return 0;

   sync_ptr->condition = condition;
   sync_ptr->threshold = threshold;
   sync_ptr->type = type;
   sync_ptr->status = status;

   sync_ptr->name[0] = (int)pid;
   sync_ptr->name[1] = (int)(pid >> 32);
   sync_ptr->name[2] = (int)sync;

   if (khronos_platform_semaphore_create(&sync_ptr->master, sync_ptr->name, 0) != KHR_SUCCESS) {
      khrn_platform_free(sync_ptr);
      return 0;
   }

   sem = (uint32_t) sync;
   {
      sync_ptr->serversync = RPC_UINT_RES(RPC_CALL4_RES(eglIntCreateSync_impl,
                                                 thread,
                                                 EGLINTCREATESYNC_ID,
                                                 RPC_UINT(type),
                                                 RPC_UINT(condition),
                                                 RPC_INT(threshold),
                                                 RPC_UINT(sem)));
      if (!sync_ptr->serversync) {
         khronos_platform_semaphore_destroy(&sync_ptr->master);
         khrn_platform_free(sync_ptr);
         return 0;
      }
   }
   return sync_ptr;
}
