#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  component; TYPE_2__* priv; } ;
struct TYPE_6__ {TYPE_1__* module; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC2(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   /* Just queue the buffer */
   FUNC1(port->priv->module->queue, buffer);
   FUNC0(port->component);
   return MMAL_SUCCESS;
}