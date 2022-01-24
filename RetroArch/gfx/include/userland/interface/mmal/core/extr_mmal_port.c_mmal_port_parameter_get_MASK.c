#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ size; int /*<<< orphan*/  id; } ;
struct TYPE_17__ {TYPE_1__* priv; scalar_t__ index; scalar_t__ type; TYPE_2__* component; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_15__ {scalar_t__ (* pf_parameter_get ) (TYPE_3__*,TYPE_4__*) ;} ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_PARAMETER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOSYS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_4__*) ; 

MMAL_STATUS_T FUNC5(MMAL_PORT_T *port,
   MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_STATUS_T status = MMAL_ENOSYS;

   if (!port || !port->priv)
      return MMAL_EINVAL;

   FUNC1("%s(%i:%i) port %p, param %p (%x,%i)", port->component->name,
             (int)port->type, (int)port->index, port,
             param, param ? param->id : 0, param ? (int)param->size : 0);

   if (!param)
      return MMAL_EINVAL;

   FUNC0(port);
   if (port->priv->pf_parameter_get)
      status = port->priv->pf_parameter_get(port, param);
   if (status == MMAL_ENOSYS)
   {
      /* is this a core parameter? */
      status = FUNC3(port, param);
   }

   FUNC2(port);
   return status;
}