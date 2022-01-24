#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ index; scalar_t__ type; TYPE_2__* priv; } ;
struct TYPE_7__ {TYPE_1__* core; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* buffer_header_callback ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC3(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   if (port->priv->core->buffer_header_callback)
   {
      port->priv->core->buffer_header_callback(port, buffer);
   }
   else
   {
      FUNC0("event lost on port %i,%i (buffer header callback not defined)",
                (int)port->type, (int)port->index);
      FUNC1(buffer);
   }
}