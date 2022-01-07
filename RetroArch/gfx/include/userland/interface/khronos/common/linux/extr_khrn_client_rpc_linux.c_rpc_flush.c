
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT_THREAD_STATE_T ;


 int merge_flush (int *) ;

void rpc_flush(CLIENT_THREAD_STATE_T *thread)
{
   merge_flush(thread);
}
