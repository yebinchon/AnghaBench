#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_16__ {scalar_t__ extradata_size; int /*<<< orphan*/  extradata; int /*<<< orphan*/ * es; } ;
struct TYPE_14__ {TYPE_9__* format; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  is_enabled; int /*<<< orphan*/  buffer_alignment_min; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer_size_recommended; int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  buffer_num; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  buffer_num_min; int /*<<< orphan*/  index; int /*<<< orphan*/  type; TYPE_1__* priv; } ;
struct TYPE_12__ {int /*<<< orphan*/  header; TYPE_9__ format; int /*<<< orphan*/  extradata; int /*<<< orphan*/  es; TYPE_5__ port; int /*<<< orphan*/  index; int /*<<< orphan*/  port_type; int /*<<< orphan*/  component_handle; } ;
typedef  TYPE_3__ mmal_worker_port_info_set ;
struct TYPE_11__ {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  is_enabled; int /*<<< orphan*/  buffer_alignment_min; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer_size_recommended; int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  buffer_num; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  buffer_num_min; } ;
struct TYPE_13__ {scalar_t__ status; int /*<<< orphan*/  extradata; int /*<<< orphan*/  es; TYPE_9__ format; TYPE_2__ port; } ;
typedef  TYPE_4__ mmal_worker_port_info ;
struct TYPE_15__ {int /*<<< orphan*/  component_handle; } ;
struct TYPE_10__ {TYPE_6__* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_5__ MMAL_PORT_T ;
typedef  TYPE_6__ MMAL_PORT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_ENOMEM ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_FORMAT_EXTRADATA_MAX_SIZE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_PORT_INFO_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_9__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_4__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC8(MMAL_PORT_T *port)
{
   MMAL_PORT_MODULE_T *module = port->priv->module;
   mmal_worker_port_info_set msg;
   mmal_worker_port_info reply;
   size_t replylen = sizeof(reply);
   MMAL_STATUS_T status;

   msg.component_handle = module->component_handle;
   msg.port_type = port->type;
   msg.index = port->index;
   msg.port = *port;
   msg.format = *port->format;
   msg.es = *port->format->es;
   if(msg.format.extradata_size > MMAL_FORMAT_EXTRADATA_MAX_SIZE)
   {
      FUNC7(0);
      msg.format.extradata_size = MMAL_FORMAT_EXTRADATA_MAX_SIZE;
   }
   FUNC2(msg.extradata, msg.format.extradata, msg.format.extradata_size);

   FUNC1("set port info (%i:%i)", port->type, port->index);

   status = FUNC6(FUNC5(), &msg.header, sizeof(msg),
                                     MMAL_WORKER_PORT_INFO_SET, &reply, &replylen, MMAL_FALSE);
   if (status == MMAL_SUCCESS)
   {
      FUNC7(replylen == sizeof(reply));
      status = reply.status;
   }

   if (status != MMAL_SUCCESS)
   {
      FUNC0("failed to set port info (%i:%i): %s", port->type, port->index,
                FUNC4(status));
      return status;
   }

   port->buffer_num_min = reply.port.buffer_num_min;
   port->buffer_num_recommended = reply.port.buffer_num_recommended;
   port->buffer_num = reply.port.buffer_num;
   port->buffer_size_min = reply.port.buffer_size_min;
   port->buffer_size_recommended = reply.port.buffer_size_recommended;
   port->buffer_size = reply.port.buffer_size;
   port->buffer_alignment_min = reply.port.buffer_alignment_min;
   port->is_enabled = reply.port.is_enabled;
   port->capabilities = reply.port.capabilities;
   reply.format.extradata = port->format->extradata;
   reply.format.es = port->format->es;
   *port->format = reply.format;
   *port->format->es = reply.es;
   if(port->format->extradata_size)
   {
      status = FUNC3(port->format, port->format->extradata_size);
      if(status != MMAL_SUCCESS)
      {
         FUNC7(0);
         port->format->extradata_size = 0;
         FUNC0("couldn't allocate extradata %i", port->format->extradata_size);
         return MMAL_ENOMEM;
      }
      FUNC2(port->format->extradata, reply.extradata, port->format->extradata_size);
   }

   return MMAL_SUCCESS;
}