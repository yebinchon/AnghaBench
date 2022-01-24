#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_8__ {TYPE_1__ waiter; int /*<<< orphan*/  magic; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ WFC_IPC_MSG_HEADER_T ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_9__ {size_t member_1; TYPE_2__* member_0; } ;
typedef  TYPE_3__ VCHIQ_ELEMENT_T ;
struct TYPE_10__ {int /*<<< orphan*/  service; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCOS_EINVAL ; 
 int /*<<< orphan*/  VCOS_ENXIO ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  WFC_IPC_MSG_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__ wfc_client_ipc ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

VCOS_STATUS_T FUNC8(WFC_IPC_MSG_HEADER_T *msg,
                                    size_t size)
{
   VCHIQ_STATUS_T vst;
   VCHIQ_ELEMENT_T elems[] = {{msg, size}};

   FUNC4("%s: type %d, len %d", VCOS_FUNCTION, msg->type, size);

   FUNC2(size >= sizeof(*msg));

   if (!FUNC5(wfc_client_ipc.refcount))
   {
      FUNC0("%s: client uninitialised", VCOS_FUNCTION);
      /* Client has not been initialised */
      return VCOS_EINVAL;
   }

   msg->magic  = WFC_IPC_MSG_MAGIC;
   msg->waiter.ptr = NULL;

   FUNC7();

   vst = FUNC1(wfc_client_ipc.service, elems, 1);

   FUNC6();

   if (vst != VCHIQ_SUCCESS)
   {
      FUNC3("%s: failed to queue, 0x%x", VCOS_FUNCTION, vst);
      return VCOS_ENXIO;
   }

   return VCOS_SUCCESS;
}