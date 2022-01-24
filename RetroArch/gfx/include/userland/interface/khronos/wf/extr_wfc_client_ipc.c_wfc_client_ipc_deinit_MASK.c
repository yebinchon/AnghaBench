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
struct TYPE_2__ {scalar_t__ refcount; int /*<<< orphan*/  lock; scalar_t__ service; int /*<<< orphan*/  waitpool; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 int /*<<< orphan*/  init_once ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ wfc_client_ipc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wfc_client_ipc_once ; 
 int /*<<< orphan*/  wfc_client_ipc_vchiq_instance ; 

bool FUNC8(void)
{
   bool service_destroyed = false;

   FUNC6(&wfc_client_ipc_once, init_once);

   FUNC4(&wfc_client_ipc.lock);

   if (!wfc_client_ipc.refcount)
   {
      /* Never initialised */
      goto completed;
   }

   if (--wfc_client_ipc.refcount != 0)
   {
      /* Still in use so don't do anything */
      goto completed;
   }

   FUNC2("%s: starting deinitialisation", VCOS_FUNCTION);

   /* Last reference dropped, tear down service */
   FUNC7(&wfc_client_ipc.waitpool);
   FUNC0(wfc_client_ipc.service);
   FUNC1(wfc_client_ipc_vchiq_instance);
   FUNC3(VCOS_LOG_CATEGORY);

   wfc_client_ipc.service = 0;

   service_destroyed = true;

completed:
   FUNC5(&wfc_client_ipc.lock);

   return service_destroyed;
}