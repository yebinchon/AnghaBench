#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ core_owns_connection; TYPE_2__* connected_port; } ;
struct TYPE_27__ {scalar_t__ type; scalar_t__ is_enabled; struct TYPE_27__* name; TYPE_1__* priv; scalar_t__ buffer_size_min; scalar_t__ buffer_size_recommended; scalar_t__ buffer_size; scalar_t__ buffer_num_min; scalar_t__ buffer_num_recommended; scalar_t__ buffer_num; } ;
struct TYPE_26__ {TYPE_3__* core; int /*<<< orphan*/  pf_enable; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_PORT_PRIVATE_CORE_T ;
typedef  TYPE_2__* MMAL_PORT_BH_CB_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int,int,int,int,int,int) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOSYS ; 
 scalar_t__ MMAL_PORT_TYPE_INPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* mmal_port_connected_input_cb ; 
 TYPE_2__* mmal_port_connected_output_cb ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (scalar_t__) ; 

MMAL_STATUS_T FUNC10(MMAL_PORT_T *port, MMAL_PORT_BH_CB_T cb)
{
   MMAL_STATUS_T status;
   MMAL_PORT_T *connected_port;
   MMAL_PORT_PRIVATE_CORE_T *core;

   if (!port || !port->priv)
      return MMAL_EINVAL;

   FUNC2("%s port %p, cb %p, buffers (%i/%i/%i,%i/%i/%i)",
             port->name, port, cb,
             (int)port->buffer_num, (int)port->buffer_num_recommended, (int)port->buffer_num_min,
             (int)port->buffer_size, (int)port->buffer_size_recommended, (int)port->buffer_size_min);

   if (!port->priv->pf_enable)
      return MMAL_ENOSYS;

   core = port->priv->core;
   FUNC0(port);
   connected_port = core->connected_port;

   /* Sanity checking */
   if (port->is_enabled)
   {
      FUNC3(port);
      FUNC1("%s(%p) already enabled", port->name, port);
      return MMAL_EINVAL;
   }
   if (connected_port && cb) /* Callback must be NULL for connected ports */
   {
      FUNC3(port);
      FUNC1("callback (%p) not allowed for connected port (%s)%p",
         cb, port->name, connected_port);
      return MMAL_EINVAL;
   }

   /* Start by preparing the port connection so that everything is ready for when
    * both ports are enabled */
   if (connected_port)
   {
      FUNC0(connected_port);
      status = FUNC5(port, connected_port);
      if (status != MMAL_SUCCESS)
      {
         FUNC3(connected_port);
         FUNC3(port);
         return status;
      }

      cb = connected_port->type == MMAL_PORT_TYPE_INPUT ?
         mmal_port_connected_output_cb : mmal_port_connected_input_cb;
   }

   /* Enable the input port of a connection first */
   if (connected_port && connected_port->type == MMAL_PORT_TYPE_INPUT)
   {
      status = FUNC8(connected_port, mmal_port_connected_input_cb);
      if (status != MMAL_SUCCESS)
      {
         FUNC1("failed to enable connected port (%s)%p (%s)", connected_port->name,
            connected_port, FUNC9(status));
         goto error;
      }
   }

   status = FUNC8(port, cb);
   if (status != MMAL_SUCCESS)
   {
      FUNC1("failed to enable port %s(%p) (%s)", port->name, port,
         FUNC9(status));
      goto error;
   }

   /* Enable the output port of a connection last */
   if (connected_port && connected_port->type != MMAL_PORT_TYPE_INPUT)
   {
      status = FUNC8(connected_port, mmal_port_connected_output_cb);
      if (status != MMAL_SUCCESS)
      {
         FUNC1("failed to enable connected port (%s)%p (%s)", connected_port->name,
            connected_port, FUNC9(status));
         goto error;
      }
   }

   /* Kick off the connection */
   if (connected_port && core->core_owns_connection)
   {
      status = FUNC6(port, connected_port);
      if (status != MMAL_SUCCESS)
      {
         FUNC1("failed to start connection (%s)%p (%s)", port->name,
            port, FUNC9(status));
         goto error;
      }
   }

   if (connected_port)
      FUNC3(connected_port);
   FUNC3(port);
   return MMAL_SUCCESS;

error:
   if (connected_port && connected_port->is_enabled)
      FUNC7(connected_port);
   if (port->is_enabled)
      FUNC7(port);
   if (connected_port)
      FUNC4(port, connected_port);

   if (connected_port)
      FUNC3(connected_port);
   FUNC3(port);
   return status;
}