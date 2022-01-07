
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int CLIENT_THREAD_STATE_T ;


 int merge_flush (int *) ;
 int send_bulk (int *,void const*,scalar_t__) ;

void rpc_send_bulk(CLIENT_THREAD_STATE_T *thread, const void *in, uint32_t len)
{
   if (in && len) {


      merge_flush(thread);

      send_bulk(thread, in, len);
   }
}
