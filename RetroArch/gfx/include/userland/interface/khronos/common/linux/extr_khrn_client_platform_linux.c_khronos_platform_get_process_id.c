
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int rpc_get_client_id (int *) ;

uint64_t khronos_platform_get_process_id()
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();

   return rpc_get_client_id(thread);
}
