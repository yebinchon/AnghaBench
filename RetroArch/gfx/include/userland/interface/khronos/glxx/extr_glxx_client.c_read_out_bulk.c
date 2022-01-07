
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_RECV_FLAG_T ;
typedef int CLIENT_THREAD_STATE_T ;


 int RPC_RECV_FLAG_BULK ;
 int RPC_RECV_FLAG_LEN ;
 int rpc_recv (int *,void*,int *,int ) ;

__attribute__((used)) static void read_out_bulk(CLIENT_THREAD_STATE_T *thread, void *out)
{
   rpc_recv(thread, out, ((void*)0), (RPC_RECV_FLAG_T)(RPC_RECV_FLAG_BULK | RPC_RECV_FLAG_LEN));
}
