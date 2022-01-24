#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_13__ {scalar_t__ status; } ;
typedef  TYPE_4__ mmal_worker_reply ;
struct TYPE_15__ {int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer_num_min; int /*<<< orphan*/  buffer_num; TYPE_1__* priv; } ;
struct TYPE_11__ {TYPE_6__ port; } ;
struct TYPE_12__ {TYPE_2__ enable; } ;
struct TYPE_14__ {int /*<<< orphan*/  header; TYPE_3__ param; int /*<<< orphan*/  port_handle; int /*<<< orphan*/  action; int /*<<< orphan*/  component_handle; } ;
typedef  TYPE_5__ mmal_worker_port_action ;
struct TYPE_16__ {int /*<<< orphan*/  port_handle; int /*<<< orphan*/  component_handle; } ;
struct TYPE_10__ {TYPE_7__* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_6__ MMAL_PORT_T ;
typedef  TYPE_7__ MMAL_PORT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_PORT_ACTION ; 
 int /*<<< orphan*/  MMAL_WORKER_PORT_ACTION_SET_REQUIREMENTS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_4__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_PORT_T *port)
{
   MMAL_PORT_MODULE_T *module = port->priv->module;
   MMAL_STATUS_T status;
   mmal_worker_reply reply;
   mmal_worker_port_action msg;
   size_t replylen = sizeof(reply);

   msg.component_handle = module->component_handle;
   msg.action = MMAL_WORKER_PORT_ACTION_SET_REQUIREMENTS;
   msg.port_handle = module->port_handle;
   msg.param.enable.port = *port;

   status = FUNC2(FUNC1(), &msg.header, sizeof(msg),
                                     MMAL_WORKER_PORT_ACTION, &reply, &replylen, MMAL_FALSE);
   if (status == MMAL_SUCCESS)
   {
      FUNC3(replylen == sizeof(reply));
      status = reply.status;
   }
   if (status != MMAL_SUCCESS)
      FUNC0("failed to set port requirements (%i/%i,%i/%i)",
                port->buffer_num, port->buffer_num_min,
                port->buffer_size, port->buffer_size_min);

   return status;
}