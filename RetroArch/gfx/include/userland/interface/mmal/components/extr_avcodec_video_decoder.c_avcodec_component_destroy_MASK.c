#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ codec; TYPE_3__* extradata; } ;
struct TYPE_10__ {scalar_t__ queue_out; scalar_t__ queue_in; TYPE_6__* codec_context; TYPE_6__* picture; } ;
struct TYPE_9__ {int /*<<< orphan*/  output; scalar_t__ output_num; int /*<<< orphan*/  input; scalar_t__ input_num; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* module; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_3__ MMAL_COMPONENT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC5(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;

   if (module->picture)
      FUNC0(module->picture);
   if (module->codec_context)
   {
      if(module->codec_context->extradata) FUNC4(module->codec_context->extradata);
      if(module->codec_context->codec) FUNC1(module->codec_context);
      FUNC0(module->codec_context);
   }

   if(module->queue_in) FUNC3(module->queue_in);
   if(module->queue_out) FUNC3(module->queue_out);
   FUNC4(module);
   if(component->input_num) FUNC2(component->input, 1);
   if(component->output_num) FUNC2(component->output, 1);
   return MMAL_SUCCESS;
}