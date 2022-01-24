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
struct TYPE_14__ {int alloc_size; int length; scalar_t__ pts; scalar_t__ dts; int /*<<< orphan*/  data; scalar_t__ flags; } ;
struct TYPE_13__ {int channels; int sample_rate; scalar_t__ sample_fmt; int output_size; int bits_per_sample; scalar_t__ pts; int output; scalar_t__ last_pts; int samples_since_last_pts; int /*<<< orphan*/  queue_out; TYPE_2__* codec_context; } ;
struct TYPE_12__ {TYPE_1__* priv; } ;
struct TYPE_11__ {int channels; int sample_rate; scalar_t__ sample_fmt; } ;
struct TYPE_10__ {TYPE_4__* module; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;
typedef  TYPE_4__ MMAL_COMPONENT_MODULE_T ;
typedef  TYPE_5__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_EAGAIN ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 scalar_t__ MMAL_TIME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_COMPONENT_T *component, MMAL_PORT_T *port)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_BUFFER_HEADER_T *out;
   int size, samples;

   /* Detect format changes */
   if (module->codec_context->channels != module->channels ||
       module->codec_context->sample_rate != module->sample_rate ||
       module->codec_context->sample_fmt != module->sample_fmt)
   {
      FUNC0(component, port);
      return MMAL_EAGAIN;
   }

   out = FUNC3(module->queue_out);
   if (!out)
      return MMAL_EAGAIN;

   size = module->output_size;
   if (size > (int)out->alloc_size)
      size = out->alloc_size;

   samples = size / module->channels * 8 / module->bits_per_sample;
   size = samples * module->channels * module->bits_per_sample / 8;
   out->length = size;
   out->pts    = module->pts;
   out->flags  = 0;
   FUNC1(out->data, module->output, size);
   module->output_size -= size;
   module->output += size;

   if (module->pts != MMAL_TIME_UNKNOWN)
   {
      module->last_pts = module->pts;
      module->samples_since_last_pts = 0;
   }
   module->pts = MMAL_TIME_UNKNOWN;
   module->samples_since_last_pts += samples;

   if (out->pts == MMAL_TIME_UNKNOWN)
      out->pts = module->last_pts + module->samples_since_last_pts * 1000000 / module->sample_rate;

   out->dts = out->pts;
   FUNC2(port, out);
   return MMAL_SUCCESS;
}