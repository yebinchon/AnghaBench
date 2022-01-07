
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int CLIENT_THREAD_STATE_T ;


 int get_handle (int *) ;
 int vchiq_get_client_id (int ) ;

uint64_t rpc_get_client_id(CLIENT_THREAD_STATE_T *thread)
{
   return vchiq_get_client_id(get_handle(thread));
}
