
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WFC_STREAM_T ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_BLOCKPOOL_ALIGN_DEFAULT ;
 int VCOS_BLOCKPOOL_FLAG_NONE ;
 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_LOG_LEVEL ;
 int WFC_STREAM_BLOCK_SIZE ;
 int WFC_STREAM_MAX_EXTENSIONS ;
 int log_cat ;
 int vcos_assert (int) ;
 scalar_t__ vcos_blockpool_create_on_heap (int *,int ,int,int ,int ,char*) ;
 scalar_t__ vcos_blockpool_extend (int *,int ,int ) ;
 int vcos_log_register (char*,int *) ;
 int vcos_log_set_level (int *,int ) ;
 int vcos_log_trace (char*,int ) ;
 scalar_t__ vcos_mutex_create (int *,char*) ;
 int wfc_stream_blockpool ;
 int wfc_stream_global_lock ;

__attribute__((used)) static void wfc_stream_initialise(void)
{
   VCOS_STATUS_T status;

   vcos_log_set_level(&log_cat, WFC_LOG_LEVEL);
   vcos_log_register("wfc_client_stream", &log_cat);

   vcos_log_trace("%s", VCOS_FUNCTION);

   status = vcos_mutex_create(&wfc_stream_global_lock, "WFC stream global lock");
   vcos_assert(status == VCOS_SUCCESS);

   status = vcos_blockpool_create_on_heap(&wfc_stream_blockpool,
         WFC_STREAM_BLOCK_SIZE, sizeof(WFC_STREAM_T),
         VCOS_BLOCKPOOL_ALIGN_DEFAULT, VCOS_BLOCKPOOL_FLAG_NONE,
         "wfc stream pool");
   vcos_assert(status == VCOS_SUCCESS);

   status = vcos_blockpool_extend(&wfc_stream_blockpool,
         WFC_STREAM_MAX_EXTENSIONS, WFC_STREAM_BLOCK_SIZE);
   vcos_assert(status == VCOS_SUCCESS);
}
