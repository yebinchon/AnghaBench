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
struct TYPE_9__ {scalar_t__ status; } ;
typedef  TYPE_2__ mmal_worker_reply ;
struct TYPE_10__ {int /*<<< orphan*/  header; int /*<<< orphan*/  port_handle; int /*<<< orphan*/  action; int /*<<< orphan*/  component_handle; } ;
typedef  TYPE_3__ mmal_worker_port_action ;
struct TYPE_12__ {int /*<<< orphan*/  port_handle; int /*<<< orphan*/  component_handle; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_5__* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_4__ MMAL_PORT_T ;
typedef  TYPE_5__ MMAL_PORT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_PORT_ACTION ; 
 int /*<<< orphan*/  MMAL_WORKER_PORT_ACTION_FLUSH ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_PORT_T *port)
{
   MMAL_PORT_MODULE_T *module = port->priv->module;
   MMAL_STATUS_T status;
   mmal_worker_reply reply;
   mmal_worker_port_action msg;
   size_t replylen = sizeof(reply);

   msg.component_handle = module->component_handle;
   msg.action = MMAL_WORKER_PORT_ACTION_FLUSH;
   msg.port_handle = module->port_handle;

   status = FUNC2(FUNC1(), &msg.header, sizeof(msg),
                                     MMAL_WORKER_PORT_ACTION, &reply, &replylen, MMAL_FALSE);
   if (status == MMAL_SUCCESS)
   {
      FUNC3(replylen == sizeof(reply));
      status = reply.status;
   }
   if (status != MMAL_SUCCESS)
      FUNC0("failed to disable port - reason %d", status);

   return status;
}