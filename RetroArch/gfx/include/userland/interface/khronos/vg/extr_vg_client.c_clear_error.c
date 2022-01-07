
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int RPC_CALL0 (int ,int *,int ) ;
 int VGCLEARERROR_ID ;
 int vgClearError_impl ;

__attribute__((used)) static void clear_error(void)
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
   RPC_CALL0(vgClearError_impl,
             thread,
             VGCLEARERROR_ID);
}
