#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_15__ {scalar_t__ status; } ;
typedef  TYPE_4__ mmal_worker_reply ;
struct TYPE_16__ {int /*<<< orphan*/  header; int /*<<< orphan*/  port_handle; int /*<<< orphan*/  action; int /*<<< orphan*/  component_handle; } ;
typedef  TYPE_5__ mmal_worker_port_action ;
struct TYPE_18__ {scalar_t__ connected; scalar_t__ has_pool; int /*<<< orphan*/  pool; int /*<<< orphan*/  port_handle; int /*<<< orphan*/  component_handle; } ;
struct TYPE_17__ {scalar_t__ buffer_num; TYPE_10__* component; TYPE_1__* priv; } ;
struct TYPE_14__ {TYPE_2__* module; } ;
struct TYPE_13__ {int /*<<< orphan*/  callback_queue; } ;
struct TYPE_12__ {TYPE_7__* module; } ;
struct TYPE_11__ {TYPE_3__* priv; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_6__ MMAL_PORT_T ;
typedef  TYPE_7__ MMAL_PORT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_PORT_ACTION ; 
 int /*<<< orphan*/  MMAL_WORKER_PORT_ACTION_DISABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_4__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC9(MMAL_PORT_T *port)
{
   MMAL_PORT_MODULE_T *module = port->priv->module;
   MMAL_STATUS_T status;
   mmal_worker_reply reply;
   mmal_worker_port_action msg;
   size_t replylen = sizeof(reply);

   msg.component_handle = module->component_handle;
   msg.action = MMAL_WORKER_PORT_ACTION_DISABLE;
   msg.port_handle = module->port_handle;

   status = FUNC5(FUNC3(), &msg.header, sizeof(msg),
                                     MMAL_WORKER_PORT_ACTION, &reply, &replylen, MMAL_FALSE);
   if (status == MMAL_SUCCESS)
   {
      FUNC6(replylen == sizeof(reply));
      status = reply.status;
   }
   if (status != MMAL_SUCCESS)
      FUNC0("failed to disable port - reason %d", status);

   if (module->has_pool)
   {
      /* MMAL server should make sure that all buffers are sent back before it
       * disables the port. */
      FUNC6(FUNC7(&module->pool) == port->buffer_num);
      FUNC8(&module->pool);
      module->has_pool = 0;
   }

   /* We need to make sure all the queued callbacks have been done */
   while (FUNC1(port->component->priv->module->callback_queue))
      FUNC2(port->component);

   if (module->connected)
      FUNC4(module->connected);

   return status;
}