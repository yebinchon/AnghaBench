#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {unsigned int ports_num; TYPE_2__** ports; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_4__* component; } ;
struct TYPE_11__ {TYPE_3__* port; } ;
struct TYPE_10__ {TYPE_5__* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_COMPONENT_T ;
typedef  TYPE_5__ MMAL_COMPONENT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,scalar_t__) ; 
 scalar_t__ MMAL_PORT_TYPE_INPUT ; 
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_STATUS_T status;
   unsigned int i;

   status = FUNC3(port);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("mmal_vc_port_info_set failed %p (%s)", port,
                FUNC1(status));
      return status;
   }

   /* Get the setting back for this port */
   status = FUNC2(port);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("mmal_vc_port_info_get failed %p (%s)", port,
                FUNC1(status));
      return status;
   }

   /* Get the settings for the output ports in case they have changed */
   if (port->type == MMAL_PORT_TYPE_INPUT)
   {
      for (i = 0; i < module->ports_num; i++)
      {
         if (module->ports[i]->port->type != MMAL_PORT_TYPE_OUTPUT)
            continue;

         status = FUNC2(module->ports[i]->port);
         if (status != MMAL_SUCCESS)
         {
            FUNC0("mmal_vc_port_info_get failed %p (%i)",
                      module->ports[i]->port, status);
            return status;
         }
      }
   }

   return MMAL_SUCCESS;
}