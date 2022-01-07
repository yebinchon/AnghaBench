
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* EGLImageKHR ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int EGLINTOPENMAXILDONEMARKER_ID ;
 int RPC_CALL2_RES (int ,int *,int ,int ,int ) ;
 int RPC_EGLID (void*) ;
 int RPC_INT_RES (int ) ;
 int eglIntOpenMAXILDoneMarker_impl ;

int eglIntOpenMAXILDoneMarker (void* component_handle, EGLImageKHR egl_image)
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
   int res;

   res = RPC_INT_RES(RPC_CALL2_RES(eglIntOpenMAXILDoneMarker_impl,
        thread, EGLINTOPENMAXILDONEMARKER_ID, RPC_EGLID(component_handle), RPC_EGLID(egl_image)));

   return res;
}
