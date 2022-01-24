#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  pong_buf ;
typedef  int /*<<< orphan*/  VCHI_SERVICE_HANDLE_T ;
typedef  scalar_t__ VCHI_CALLBACK_REASON_T ;
struct TYPE_2__ {int iters; int /*<<< orphan*/  blocksize; scalar_t__ verify; } ;

/* Variables and functions */
 int NUM_BULK_BUFS ; 
 scalar_t__ VCHI_CALLBACK_BULK_RECEIVED ; 
 scalar_t__ VCHI_CALLBACK_BULK_RECEIVE_ABORTED ; 
 scalar_t__ VCHI_CALLBACK_BULK_SENT ; 
 scalar_t__ VCHI_CALLBACK_BULK_TRANSMIT_ABORTED ; 
 scalar_t__ VCHI_CALLBACK_MSG_AVAILABLE ; 
 int VCHI_FLAGS_BLOCK_UNTIL_QUEUED ; 
 int VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE ; 
 int /*<<< orphan*/  VCHI_FLAGS_NONE ; 
 int /*<<< orphan*/  VCOS_BKPT ; 
 scalar_t__* bulk_rx_data ; 
 int bulk_rx_received ; 
 int bulk_rx_sent ; 
 scalar_t__* bulk_tx_data ; 
 int bulk_tx_received ; 
 int bulk_tx_sent ; 
 int /*<<< orphan*/  g_mutex ; 
 TYPE_1__ g_params ; 
 char* g_server_error ; 
 int /*<<< orphan*/  g_server_reply ; 
 int /*<<< orphan*/  g_shutdown ; 
 int /*<<< orphan*/  g_sync_mode ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(void *callback_param,
   VCHI_CALLBACK_REASON_T reason,
   void *handle)
{
   VCHI_SERVICE_HANDLE_T service = *(VCHI_SERVICE_HANDLE_T *)callback_param;
   FUNC10(&g_mutex);
   if (reason == VCHI_CALLBACK_MSG_AVAILABLE)
   {
      if (!g_sync_mode)
      {
         static char pong_buf[100];
         uint32_t actual;
         while (FUNC4(service, pong_buf, sizeof(pong_buf), &actual, VCHI_FLAGS_NONE) == 0)
         {
            if (actual > 1)
               g_server_error = pong_buf;
            if (actual != 0)
            {
               /* Responses of length 0 are not sync points */
               FUNC6(&g_server_reply);
               break;
            }
         }
      }
   }
   else if (reason == VCHI_CALLBACK_BULK_SENT)
   {
      int i = (int)handle;
      FUNC9("  BULK_TRANSMIT_DONE(%d)", i);
      if (bulk_tx_received < 0)
         FUNC6(&g_server_reply);
      else
      {
         FUNC5(i == bulk_tx_received);
         bulk_tx_received++;
         if (bulk_tx_sent < g_params.iters)
         {
            FUNC3(service, bulk_tx_data[i % NUM_BULK_BUFS],
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
      FUNC9("  BULK_RECEIVE_DONE(%d): data '%s'", i, bulk_rx_data[i % NUM_BULK_BUFS]);
      FUNC5(i == bulk_rx_received);
      if (g_params.verify && (FUNC0(bulk_tx_data[i % NUM_BULK_BUFS], bulk_rx_data[i % NUM_BULK_BUFS], g_params.blocksize) != 0))
      {
         FUNC7("* Data corruption - %x, %x, %x", (unsigned int)bulk_tx_data[i % NUM_BULK_BUFS], (unsigned int)bulk_rx_data[i % NUM_BULK_BUFS], g_params.blocksize);
         VCOS_BKPT;
      }
      bulk_rx_received++;
      if (bulk_rx_sent < g_params.iters)
      {
         if (g_params.verify)
            FUNC1(bulk_rx_data[i % NUM_BULK_BUFS], 0xff, g_params.blocksize);
         FUNC2(service, bulk_rx_data[i % NUM_BULK_BUFS], g_params.blocksize,
            VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE | VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
            (void *)bulk_rx_sent);
         bulk_rx_sent++;
      }
   }
   else if (reason == VCHI_CALLBACK_BULK_TRANSMIT_ABORTED)
   {
      int i = (int)handle;
      FUNC8("  BULK_TRANSMIT_ABORTED(%d)", i);
   }
   else if (reason == VCHI_CALLBACK_BULK_RECEIVE_ABORTED)
   {
      int i = (int)handle;
      FUNC8("  BULK_RECEIVE_ABORTED(%d)", i);
   }
   if ((bulk_tx_received == g_params.iters) && (bulk_rx_received == g_params.iters))
      FUNC6(&g_shutdown);
   FUNC11(&g_mutex);
}