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
typedef  scalar_t__ VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_PARAMS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
typedef  int /*<<< orphan*/  VCHIQ_INSTANCE_T ;
struct TYPE_2__ {int iters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  VCHIQ_BULK_MODE_BLOCKING ; 
 scalar_t__ VCHIQ_ERROR ; 
 int FUNC1 (char,char,char,char) ; 
#define  VCHIQ_MAX_MSG_SIZE 128 
 scalar_t__ VCHIQ_SUCCESS ; 
 int VCHIQ_TEST_VER ; 
 int /*<<< orphan*/  clnt_callback ; 
 TYPE_1__ g_params ; 
 char* g_servname ; 
 scalar_t__ g_timeout_ms ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VCHIQ_STATUS_T
FUNC9(void)
{
   /* Measure message round trip time for various sizes*/
   VCHIQ_INSTANCE_T vchiq_instance;
   VCHIQ_SERVICE_HANDLE_T vchiq_service;
   VCHIQ_SERVICE_PARAMS_T vchiq_service_params;
   int fourcc;

   static int sizes[] = { 0, 1024, 2048, VCHIQ_MAX_MSG_SIZE };

   fourcc = FUNC1(g_servname[0], g_servname[1], g_servname[2], g_servname[3]);

   FUNC2("signal test - service:%s, iters:%d, version %d\n", g_servname, g_params.iters, VCHIQ_TEST_VER);

#ifdef ANDROID
   if (g_timeout_ms)
   {
      setup_auto_kill(g_timeout_ms);
   }
#endif

   if (FUNC7(&vchiq_instance) != VCHIQ_SUCCESS)
   {
      FUNC2("* failed to open vchiq instance\n");
      return VCHIQ_ERROR;
   }

   FUNC6(vchiq_instance);

   FUNC0(&vchiq_service_params, fourcc, clnt_callback, "clnt userdata", VCHIQ_TEST_VER);
   if (FUNC8(vchiq_instance, &vchiq_service_params, &vchiq_service) != VCHIQ_SUCCESS)
   {
      FUNC2("* failed to open service - already in use?\n");
      return VCHIQ_ERROR;
   }

   FUNC4(vchiq_service, &sizes, 16, 0, VCHIQ_BULK_MODE_BLOCKING);

   FUNC5(vchiq_service);

   return VCHIQ_SUCCESS;
}