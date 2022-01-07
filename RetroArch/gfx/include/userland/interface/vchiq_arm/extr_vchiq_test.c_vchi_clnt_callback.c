
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pong_buf ;
typedef int VCHI_SERVICE_HANDLE_T ;
typedef scalar_t__ VCHI_CALLBACK_REASON_T ;
struct TYPE_2__ {int iters; int blocksize; scalar_t__ verify; } ;


 int NUM_BULK_BUFS ;
 scalar_t__ VCHI_CALLBACK_BULK_RECEIVED ;
 scalar_t__ VCHI_CALLBACK_BULK_RECEIVE_ABORTED ;
 scalar_t__ VCHI_CALLBACK_BULK_SENT ;
 scalar_t__ VCHI_CALLBACK_BULK_TRANSMIT_ABORTED ;
 scalar_t__ VCHI_CALLBACK_MSG_AVAILABLE ;
 int VCHI_FLAGS_BLOCK_UNTIL_QUEUED ;
 int VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE ;
 int VCHI_FLAGS_NONE ;
 int VCOS_BKPT ;
 scalar_t__* bulk_rx_data ;
 int bulk_rx_received ;
 int bulk_rx_sent ;
 scalar_t__* bulk_tx_data ;
 int bulk_tx_received ;
 int bulk_tx_sent ;
 int g_mutex ;
 TYPE_1__ g_params ;
 char* g_server_error ;
 int g_server_reply ;
 int g_shutdown ;
 int g_sync_mode ;
 scalar_t__ mem_check (scalar_t__,scalar_t__,int ) ;
 int memset (scalar_t__,int,int ) ;
 int vchi_bulk_queue_receive (int ,scalar_t__,int ,int,void*) ;
 int vchi_bulk_queue_transmit (int ,scalar_t__,int ,int,void*) ;
 scalar_t__ vchi_msg_dequeue (int ,char*,int,int*,int ) ;
 int vcos_assert (int) ;
 int vcos_event_signal (int *) ;
 int vcos_log_error (char*,unsigned int,unsigned int,int ) ;
 int vcos_log_info (char*,int) ;
 int vcos_log_trace (char*,int,...) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static void
vchi_clnt_callback(void *callback_param,
   VCHI_CALLBACK_REASON_T reason,
   void *handle)
{
   VCHI_SERVICE_HANDLE_T service = *(VCHI_SERVICE_HANDLE_T *)callback_param;
   vcos_mutex_lock(&g_mutex);
   if (reason == VCHI_CALLBACK_MSG_AVAILABLE)
   {
      if (!g_sync_mode)
      {
         static char pong_buf[100];
         uint32_t actual;
         while (vchi_msg_dequeue(service, pong_buf, sizeof(pong_buf), &actual, VCHI_FLAGS_NONE) == 0)
         {
            if (actual > 1)
               g_server_error = pong_buf;
            if (actual != 0)
            {

               vcos_event_signal(&g_server_reply);
               break;
            }
         }
      }
   }
   else if (reason == VCHI_CALLBACK_BULK_SENT)
   {
      int i = (int)handle;
      vcos_log_trace("  BULK_TRANSMIT_DONE(%d)", i);
      if (bulk_tx_received < 0)
         vcos_event_signal(&g_server_reply);
      else
      {
         vcos_assert(i == bulk_tx_received);
         bulk_tx_received++;
         if (bulk_tx_sent < g_params.iters)
         {
            vchi_bulk_queue_transmit(service, bulk_tx_data[i % NUM_BULK_BUFS],
               g_params.blocksize,
               VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE | VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
               (void *)bulk_tx_sent);
            bulk_tx_sent++;
         }
      }
   }
   else if (reason == VCHI_CALLBACK_BULK_RECEIVED)
   {
      int i = (int)handle;
      vcos_log_trace("  BULK_RECEIVE_DONE(%d): data '%s'", i, bulk_rx_data[i % NUM_BULK_BUFS]);
      vcos_assert(i == bulk_rx_received);
      if (g_params.verify && (mem_check(bulk_tx_data[i % NUM_BULK_BUFS], bulk_rx_data[i % NUM_BULK_BUFS], g_params.blocksize) != 0))
      {
         vcos_log_error("* Data corruption - %x, %x, %x", (unsigned int)bulk_tx_data[i % NUM_BULK_BUFS], (unsigned int)bulk_rx_data[i % NUM_BULK_BUFS], g_params.blocksize);
         VCOS_BKPT;
      }
      bulk_rx_received++;
      if (bulk_rx_sent < g_params.iters)
      {
         if (g_params.verify)
            memset(bulk_rx_data[i % NUM_BULK_BUFS], 0xff, g_params.blocksize);
         vchi_bulk_queue_receive(service, bulk_rx_data[i % NUM_BULK_BUFS], g_params.blocksize,
            VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE | VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
            (void *)bulk_rx_sent);
         bulk_rx_sent++;
      }
   }
   else if (reason == VCHI_CALLBACK_BULK_TRANSMIT_ABORTED)
   {
      int i = (int)handle;
      vcos_log_info("  BULK_TRANSMIT_ABORTED(%d)", i);
   }
   else if (reason == VCHI_CALLBACK_BULK_RECEIVE_ABORTED)
   {
      int i = (int)handle;
      vcos_log_info("  BULK_RECEIVE_ABORTED(%d)", i);
   }
   if ((bulk_tx_received == g_params.iters) && (bulk_rx_received == g_params.iters))
      vcos_event_signal(&g_shutdown);
   vcos_mutex_unlock(&g_mutex);
}
