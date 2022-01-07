
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT_THREAD_STATE_T ;


 int GLINTCACHEGROW_ID ;
 int RPC_BOOLEAN_RES (int ) ;
 int RPC_CALL0_RES (int ,int *,int ) ;
 int glintCacheGrow_impl ;

__attribute__((used)) static int send_grow(CLIENT_THREAD_STATE_T *thread)
{
   return RPC_BOOLEAN_RES(RPC_CALL0_RES(glintCacheGrow_impl,
                                        thread,
                                        GLINTCACHEGROW_ID));
}
