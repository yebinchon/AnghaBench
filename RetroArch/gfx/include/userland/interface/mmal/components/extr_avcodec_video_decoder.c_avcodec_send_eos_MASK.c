#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  flags; scalar_t__ length; } ;
struct TYPE_10__ {int /*<<< orphan*/  queue_out; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* module; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_3__ MMAL_COMPONENT_MODULE_T ;
typedef  TYPE_4__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_BUFFER_HEADER_FLAG_EOS ; 
 int /*<<< orphan*/  MMAL_EAGAIN ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC2(MMAL_COMPONENT_T *component, MMAL_PORT_T *port)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_BUFFER_HEADER_T *out = FUNC1(module->queue_out);

   if (!out)
      return MMAL_EAGAIN;

   out->length = 0;
   out->flags = MMAL_BUFFER_HEADER_FLAG_EOS;
   FUNC0(port, out);
   return MMAL_SUCCESS;
}