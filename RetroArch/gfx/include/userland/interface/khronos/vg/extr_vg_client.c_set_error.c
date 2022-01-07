
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VGErrorCode ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int RPC_CALL1 (int ,int *,int ,int ) ;
 int RPC_ENUM (int ) ;
 int VGSETERROR_ID ;
 int vgSetError_impl ;

__attribute__((used)) static void set_error(VGErrorCode error)
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
   RPC_CALL1(vgSetError_impl,
             thread,
             VGSETERROR_ID,
             RPC_ENUM(error));
}
