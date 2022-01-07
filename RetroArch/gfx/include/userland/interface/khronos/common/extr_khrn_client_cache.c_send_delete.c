
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT_THREAD_STATE_T ;


 int GLINTCACHEDELETE_ID ;
 int RPC_CALL1 (int ,int *,int ,int ) ;
 int RPC_UINT (int) ;
 int glintCacheDelete_impl ;

__attribute__((used)) static void send_delete(CLIENT_THREAD_STATE_T *thread, int base)
{
   RPC_CALL1(glintCacheDelete_impl,
             thread,
             GLINTCACHEDELETE_ID,
             RPC_UINT(base));
}
