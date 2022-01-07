
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT_THREAD_STATE_T ;


 int CLIENT_MAKE_CURRENT_SIZE ;
 int GLINTCACHEDATA_ID ;
 int MERGE_BUFFER_SIZE ;
 int RPC_CALL3_IN_CTRL (int ,int *,int ,int ,int ,char*,int) ;
 int RPC_SIZEI (int) ;
 int RPC_UINT (int) ;
 int _min (int,int) ;
 int glintCacheData_impl ;

__attribute__((used)) static void send_data(CLIENT_THREAD_STATE_T *thread, int base, const void *data, int len)
{
   int off = 0;

   while (len > 0) {
      int chunk = _min(len, MERGE_BUFFER_SIZE-CLIENT_MAKE_CURRENT_SIZE-12-8);

      RPC_CALL3_IN_CTRL(glintCacheData_impl,
                        thread,
                        GLINTCACHEDATA_ID,
                        RPC_UINT(base + off),
                        RPC_SIZEI(chunk),
                        (char *)data + off,
                        chunk);

      off += chunk;
      len -= chunk;
   }
}
