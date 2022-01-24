#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vchiq_params ;
typedef  scalar_t__ VCOS_STATUS_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_5__ {int /*<<< orphan*/  version_min; int /*<<< orphan*/  version; TYPE_2__* userdata; int /*<<< orphan*/  callback; int /*<<< orphan*/  fourcc; } ;
typedef  TYPE_1__ VCHIQ_SERVICE_PARAMS_T ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; int /*<<< orphan*/  service; int /*<<< orphan*/  waitpool; } ;

/* Variables and functions */
 scalar_t__ VCHIQ_SUCCESS ; 
 scalar_t__ VCOS_ENXIO ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  WFC_CLIENT_IPC_LOGLEVEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  WFC_IPC_VER_CURRENT ; 
 int /*<<< orphan*/  WFC_IPC_VER_MINIMUM ; 
 int /*<<< orphan*/  init_once ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ wfc_client_ipc ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wfc_client_ipc_once ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  wfc_client_ipc_vchiq_callback ; 
 int /*<<< orphan*/  wfc_client_ipc_vchiq_instance ; 

VCOS_STATUS_T FUNC19(void)
{
   VCHIQ_SERVICE_PARAMS_T vchiq_params;
   bool vchiq_initialised = false, waitpool_initialised = false;
   bool service_initialised = false;
   VCOS_STATUS_T status = VCOS_ENXIO;
   VCHIQ_STATUS_T vchiq_status;

   FUNC15(&wfc_client_ipc_once, init_once);

   FUNC13(&wfc_client_ipc.lock);

   if (wfc_client_ipc.refcount++ > 0)
   {
      /* Already initialised so nothing to do */
      FUNC14(&wfc_client_ipc.lock);
      return VCOS_SUCCESS;
   }

   FUNC10(VCOS_LOG_CATEGORY, WFC_CLIENT_IPC_LOGLEVEL);
   FUNC9("wfcipc", VCOS_LOG_CATEGORY);

   FUNC11("%s: starting initialisation", VCOS_FUNCTION);

   /* Initialise a VCHIQ instance */
   vchiq_status = FUNC3(&wfc_client_ipc_vchiq_instance);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      FUNC8("%s: failed to initialise vchiq: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }
   vchiq_initialised = true;

   vchiq_status = FUNC2(wfc_client_ipc_vchiq_instance);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      FUNC8("%s: failed to connect to vchiq: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }

   FUNC1(&vchiq_params, 0, sizeof(vchiq_params));
   vchiq_params.fourcc = FUNC0();
   vchiq_params.callback = wfc_client_ipc_vchiq_callback;
   vchiq_params.userdata = &wfc_client_ipc;
   vchiq_params.version = WFC_IPC_VER_CURRENT;
   vchiq_params.version_min = WFC_IPC_VER_MINIMUM;

   vchiq_status = FUNC4(wfc_client_ipc_vchiq_instance, &vchiq_params, &wfc_client_ipc.service);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      FUNC8("%s: could not open vchiq service: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }
   service_initialised = true;

   status = FUNC16(&wfc_client_ipc.waitpool);
   if (status != VCOS_SUCCESS)
   {
      FUNC8("%s: could not create wait pool: %d", VCOS_FUNCTION, status);
      goto error;
   }
   waitpool_initialised = true;

   /* Allow videocore to suspend, drops count to zero. */
   FUNC5(wfc_client_ipc.service);

   FUNC14(&wfc_client_ipc.lock);

   status = FUNC18();
   if (status != VCOS_SUCCESS)
   {
      FUNC8("%s: could not send client pid: %d", VCOS_FUNCTION, status);
      FUNC13(&wfc_client_ipc.lock);
      goto error;
   }

   return VCOS_SUCCESS;

error:
   if (waitpool_initialised)
      FUNC17(&wfc_client_ipc.waitpool);
   if (service_initialised)
      FUNC6(wfc_client_ipc.service);
   if (vchiq_initialised)
      FUNC7(wfc_client_ipc_vchiq_instance);
   FUNC12(VCOS_LOG_CATEGORY);
   wfc_client_ipc.refcount--;

   FUNC14(&wfc_client_ipc.lock);
   return status;
}