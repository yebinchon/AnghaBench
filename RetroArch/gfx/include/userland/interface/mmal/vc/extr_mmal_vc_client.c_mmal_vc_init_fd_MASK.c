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
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_5__ {int /*<<< orphan*/  version_min; int /*<<< orphan*/  version; TYPE_4__* userdata; int /*<<< orphan*/  callback; int /*<<< orphan*/  fourcc; } ;
typedef  TYPE_1__ VCHIQ_SERVICE_PARAMS_T ;
struct TYPE_6__ {int usecount; int inited; int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; int /*<<< orphan*/  service; int /*<<< orphan*/  waitpool; int /*<<< orphan*/  bulk_lock; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ MMAL_EIO ; 
 scalar_t__ MMAL_ENOSPC ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  WORKER_VER_MAJOR ; 
 int /*<<< orphan*/  WORKER_VER_MINIMUM ; 
 TYPE_4__ client ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_once ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  mmal_vc_vchiq_callback ; 
 int /*<<< orphan*/  mmal_vchiq_instance ; 
 int /*<<< orphan*/  once ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

MMAL_STATUS_T FUNC17(int dev_vchiq_fd)
{
   VCHIQ_SERVICE_PARAMS_T vchiq_params;
   MMAL_BOOL_T vchiq_initialised = 0, waitpool_initialised = 0;
   MMAL_BOOL_T service_initialised = 0;
   MMAL_STATUS_T status = MMAL_EIO;
   VCHIQ_STATUS_T vchiq_status;
   int count;

   FUNC16(&once, init_once);

   FUNC14(&client.lock);

   count = client.refcount++;
   if (count > 0)
   {
      /* Already initialised so nothing to do */
      FUNC15(&client.lock);
      return MMAL_SUCCESS;
   }

   FUNC11("mmalipc", VCOS_LOG_CATEGORY);

   /* Initialise a VCHIQ instance */
   vchiq_status = FUNC8(&mmal_vchiq_instance, dev_vchiq_fd);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      FUNC0("failed to initialise vchiq");
      status = MMAL_EIO;
      goto error;
   }
   vchiq_initialised = 1;

   vchiq_status = FUNC7(mmal_vchiq_instance);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      FUNC0("failed to connect to vchiq");
      status = MMAL_EIO;
      goto error;
   }

   FUNC4(&vchiq_params,0,sizeof(vchiq_params));
   vchiq_params.fourcc = FUNC1();
   vchiq_params.callback = mmal_vc_vchiq_callback;
   vchiq_params.userdata = &client;
   vchiq_params.version = WORKER_VER_MAJOR;
   vchiq_params.version_min = WORKER_VER_MINIMUM;

   vchiq_status = FUNC9(mmal_vchiq_instance, &vchiq_params, &client.service);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      FUNC0("could not open vchiq service");
      status = MMAL_EIO;
      goto error;
   }
   client.usecount = 1; /* usecount set to 1 by the open call. */
   service_initialised = 1;

   status = FUNC2(&client.waitpool);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("could not create wait pool");
      goto error;
   }
   waitpool_initialised = 1;

   if (FUNC13(&client.bulk_lock, "mmal client bulk lock") != VCOS_SUCCESS)
   {
      FUNC0("could not create bulk lock");
      status = MMAL_ENOSPC;
      goto error;
   }

   client.inited = 1;

   FUNC15(&client.lock);
   /* assume we're not using VC immediately.  Do this outside the lock */
   FUNC5();

   return MMAL_SUCCESS;

 error:
   if (waitpool_initialised)
      FUNC3(&client.waitpool);
   if (service_initialised)
   {
      client.usecount = 0;
      FUNC6(client.service);
   }
   if (vchiq_initialised)
      FUNC10(mmal_vchiq_instance);
   FUNC12(VCOS_LOG_CATEGORY);
   client.refcount--;

   FUNC15(&client.lock);
   return status;
}