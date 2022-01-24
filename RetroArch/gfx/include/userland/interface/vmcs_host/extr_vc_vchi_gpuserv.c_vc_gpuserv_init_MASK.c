#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vchiq_params ;
typedef  int int32_t ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_5__ {int version; int version_min; int /*<<< orphan*/ * userdata; int /*<<< orphan*/  callback; int /*<<< orphan*/  fourcc; } ;
typedef  TYPE_1__ VCHIQ_SERVICE_PARAMS_T ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  service; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,char,unsigned char,char) ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 int /*<<< orphan*/  VCOS_LOG_TRACE ; 
 int VCOS_SUCCESS ; 
 int /*<<< orphan*/  gpuserv_callback ; 
 TYPE_4__ gpuserv_client ; 
 int /*<<< orphan*/  gpuserv_client_once ; 
 int /*<<< orphan*/  gpuserv_client_vchiq_instance ; 
 int /*<<< orphan*/  init_once ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int32_t FUNC12( void )
{
   VCHIQ_SERVICE_PARAMS_T vchiq_params;
   VCHIQ_STATUS_T vchiq_status;

   FUNC11(&gpuserv_client_once, init_once);

   FUNC9(&gpuserv_client.lock);

   if (gpuserv_client.refcount++ > 0)
   {
      /* Already initialised so nothing to do */
      FUNC10(&gpuserv_client.lock);
      return VCOS_SUCCESS;
   }

   FUNC7(VCOS_LOG_CATEGORY, VCOS_LOG_TRACE);
   FUNC6("gpuserv", VCOS_LOG_CATEGORY);

   FUNC8("%s: starting initialisation", VCOS_FUNCTION);

   /* Initialise a VCHIQ instance */
   vchiq_status = FUNC3(&gpuserv_client_vchiq_instance);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      FUNC5("%s: failed to initialise vchiq: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }

   vchiq_status = FUNC2(gpuserv_client_vchiq_instance);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      FUNC5("%s: failed to connect to vchiq: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }

   FUNC1(&vchiq_params, 0, sizeof(vchiq_params));
   vchiq_params.fourcc = FUNC0('G','P','U','S');
   vchiq_params.callback = gpuserv_callback;
   vchiq_params.userdata = NULL;
   vchiq_params.version = 1;
   vchiq_params.version_min = 1;

   vchiq_status = FUNC4(gpuserv_client_vchiq_instance, &vchiq_params, &gpuserv_client.service);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      FUNC5("%s: could not open vchiq service: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }
   FUNC10(&gpuserv_client.lock);
   return 0;
error:
   FUNC10(&gpuserv_client.lock);
   return -1;
}