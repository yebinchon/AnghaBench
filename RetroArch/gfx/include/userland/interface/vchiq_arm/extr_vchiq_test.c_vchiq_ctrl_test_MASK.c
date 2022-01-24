#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  service_params ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_7__ {char* userdata; void* version_min; void* version; int /*<<< orphan*/  callback; int /*<<< orphan*/  fourcc; } ;
typedef  TYPE_1__ VCHIQ_SERVICE_PARAMS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
typedef  int /*<<< orphan*/  VCHIQ_INSTANCE_T ;
struct TYPE_8__ {int size; scalar_t__ data; } ;
typedef  TYPE_2__ VCHIQ_ELEMENT_T ;
struct TYPE_9__ {int blocksize; int iters; scalar_t__ echo; } ;

/* Variables and functions */
 int MSG_ECHO ; 
 int NUM_BULK_BUFS ; 
 scalar_t__ VCHIQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char,char,char,char) ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 void* VCHIQ_TEST_VER ; 
 scalar_t__* bulk_tx_data ; 
 int /*<<< orphan*/  clnt_callback ; 
 scalar_t__ ctrl_received ; 
 TYPE_6__ g_params ; 
 char* g_server_error ; 
 char* g_servname ; 
 int /*<<< orphan*/  g_shutdown ; 
 scalar_t__ g_timeout_ms ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static VCHIQ_STATUS_T
FUNC14(void)
{
   VCHIQ_INSTANCE_T vchiq_instance;
   VCHIQ_SERVICE_HANDLE_T vchiq_service;
   VCHIQ_SERVICE_PARAMS_T service_params;
   uint32_t start, end;
   int i;

   ctrl_received = 0;
   if (g_params.blocksize < 4)
      g_params.blocksize = 4;

   for (i = 0; i < NUM_BULK_BUFS; i++)
   {
      int j;
      bulk_tx_data[i] = FUNC1(g_params.blocksize);
      if (!bulk_tx_data[i])
      {
         FUNC3("* out of memory\n");
         return VCHIQ_ERROR;
      }
      *(int *)bulk_tx_data[i] = MSG_ECHO;
      for (j = 4; j < g_params.blocksize; j+=4)
      {
         *(unsigned int *)(bulk_tx_data[i] + j) = ((0x80 | i) << 24) + j;
      }
   }

#ifdef ANDROID
   if (g_timeout_ms)
   {
      setup_auto_kill(g_timeout_ms);
   }
#endif

   if (FUNC6(&vchiq_instance) != VCHIQ_SUCCESS)
   {
      FUNC3("* failed to open vchiq instance\n");
      return VCHIQ_ERROR;
   }

   FUNC5(vchiq_instance);

   FUNC2(&service_params, 0, sizeof(service_params));

   service_params.fourcc = FUNC0(g_servname[0], g_servname[1], g_servname[2], g_servname[3]);
   service_params.callback = clnt_callback;
   service_params.userdata = "clnt userdata";
   service_params.version = VCHIQ_TEST_VER;
   service_params.version_min = VCHIQ_TEST_VER;

   if (FUNC7(vchiq_instance, &service_params, &vchiq_service) != VCHIQ_SUCCESS)
   {
      FUNC3("* failed to open service - already in use?\n");
      return VCHIQ_ERROR;
   }

   FUNC3("Ctrl test - service:%s, block size:%d, iters:%d\n", g_servname, g_params.blocksize, g_params.iters);

   start = FUNC12();

   for (i = 0; i < g_params.iters; i++)
   {
      VCHIQ_ELEMENT_T element;
      element.data = bulk_tx_data[i % NUM_BULK_BUFS];
      element.size = g_params.blocksize;

      if (FUNC8(vchiq_service, &element, 1) != VCHIQ_SUCCESS)
      {
         FUNC3("* failed to send a message\n");
         goto error_exit;
      }
      if (g_server_error)
      {
         FUNC3("* error - %s\n", g_server_error);
         goto error_exit;
      }
   }

   FUNC13("Sent all messages");

   if (g_params.echo)
   {
      FUNC13("vchiq_test: waiting for shutdown");

      FUNC11(&g_shutdown);
   }

   if (g_server_error)
   {
      FUNC3("* error - %s\n", g_server_error);
      goto error_exit;
   }

   end = FUNC12();

   FUNC9(vchiq_service);

   FUNC13("vchiq_test: shutting down");

   FUNC10(vchiq_instance);

   FUNC3("Elapsed time: %dus per iteration\n", (end - start) / g_params.iters);

   return VCHIQ_SUCCESS;

error_exit:
   FUNC9(vchiq_service);
   FUNC10(vchiq_instance);
   return VCHIQ_ERROR;
}