
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int CLIENT_THREAD_STATE_T ;


 int UNREACHABLE () ;
 int check_workspace (int) ;
 int merge_flush (int *) ;
 int rpc_gather (void const*,void const*,int,int,int) ;
 int send_bulk (int *,void const*,int) ;
 void const* workspace ;

void rpc_send_bulk_gather(CLIENT_THREAD_STATE_T *thread, const void *in, uint32_t len, int32_t stride, uint32_t n)
{

   if (in && len) {


      merge_flush(thread);

      if (len == stride) {

         send_bulk(thread, in, n * len);
      } else {
         check_workspace(n * len);
         rpc_gather(workspace, in, len, stride, n);
         send_bulk(thread, workspace, n * len);
      }
   }



}
