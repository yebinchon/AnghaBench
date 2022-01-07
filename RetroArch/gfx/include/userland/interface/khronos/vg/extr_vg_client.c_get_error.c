
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VGErrorCode ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int RPC_CALL0_RES (int ,int *,int ) ;
 int RPC_ENUM_RES (int ) ;
 int VGGETERROR_ID ;
 int vgGetError_impl ;

__attribute__((used)) static VGErrorCode get_error(void)
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
   return (VGErrorCode)RPC_ENUM_RES(RPC_CALL0_RES(vgGetError_impl,
                                                  thread,
                                                  VGGETERROR_ID));
}
