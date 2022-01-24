#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_10__ {scalar_t__ status; } ;
typedef  TYPE_3__ mmal_worker_reply ;
struct TYPE_11__ {int /*<<< orphan*/  header; int /*<<< orphan*/  component_handle; } ;
typedef  TYPE_4__ mmal_worker_component_disable ;
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_9__ {TYPE_1__* module; } ;
struct TYPE_8__ {int /*<<< orphan*/  component_handle; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_5__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ MMAL_ENOSYS ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_COMPONENT_DISABLE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_COMPONENT_T *component)
{
   MMAL_STATUS_T status;
   mmal_worker_reply reply;
   mmal_worker_component_disable msg;
   size_t replylen = sizeof(reply);

   FUNC3(component && component->priv && component->priv->module);

   msg.component_handle = component->priv->module->component_handle;

   status = FUNC2(FUNC1(), &msg.header, sizeof(msg),
         MMAL_WORKER_COMPONENT_DISABLE,
         &reply, &replylen, MMAL_FALSE);

   if (status == MMAL_SUCCESS)
   {
      FUNC3(replylen == sizeof(reply));
      status = reply.status;
   }

   if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
   {
      FUNC0("failed to disable component - reason %d", status);
      goto fail;
   }

   return status;
fail:
   return status;
}