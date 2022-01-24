#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* pf_set_format ) (TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_BH_CB_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_PORT_TYPE_INPUT ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC2(MMAL_PORT_T *port, MMAL_PORT_BH_CB_T cb)
{
   FUNC0(cb);

   /* We need to propagate the buffer requirements when the input port is
    * enabled */
   if (port->type == MMAL_PORT_TYPE_INPUT)
      return port->priv->pf_set_format(port);

   return MMAL_SUCCESS;
}