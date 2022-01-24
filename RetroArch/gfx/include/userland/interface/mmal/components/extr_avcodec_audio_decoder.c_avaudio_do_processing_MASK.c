#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_18__ {int size; scalar_t__ data; } ;
struct TYPE_17__ {int length; int flags; scalar_t__ alloc_size; scalar_t__ dts; scalar_t__ pts; scalar_t__ offset; scalar_t__ data; } ;
struct TYPE_16__ {scalar_t__ pts; int /*<<< orphan*/  queue_in; scalar_t__ output_size; scalar_t__ output; int /*<<< orphan*/  codec_context; scalar_t__ output_buffer; scalar_t__ output_buffer_size; scalar_t__ output_needs_configuring; } ;
struct TYPE_15__ {int /*<<< orphan*/ ** output; int /*<<< orphan*/ ** input; TYPE_1__* priv; } ;
struct TYPE_14__ {TYPE_3__* module; } ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_3__ MMAL_COMPONENT_MODULE_T ;
typedef  TYPE_4__ MMAL_BUFFER_HEADER_T ;
typedef  int MMAL_BOOL_T ;
typedef  TYPE_5__ AVPacket ;

/* Variables and functions */
 scalar_t__ FF_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MMAL_BUFFER_HEADER_FLAG_EOS ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ MMAL_TIME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static MMAL_BOOL_T FUNC10(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_PORT_T *port_in = component->input[0];
   MMAL_PORT_T *port_out = component->output[0];
   MMAL_BUFFER_HEADER_T *in;
   AVPacket avpkt;
   int used = 0;

   if (module->output_needs_configuring)
      return 0;

   if (module->output_size &&
       FUNC5(component, port_out) != MMAL_SUCCESS)
      return 0;
   if (module->output_size)
      return 1;

   /* Get input buffer to decode */
   in = FUNC8(module->queue_in);
   if (!in)
      return 0;

   /* Discard empty buffers. EOS buffers are not discarded since they will be used
    * to flush the codec. */
   if (!in->length && !(in->flags & MMAL_BUFFER_HEADER_FLAG_EOS))
      goto end;

   /* Avcodec expects padded input data */
   if (in->length && !in->offset)
   {
      if(in->length + FF_INPUT_BUFFER_PADDING_SIZE <= in->alloc_size)
         FUNC6(in->data + in->length, 0, FF_INPUT_BUFFER_PADDING_SIZE);
      else
         FUNC1("could not pad buffer"); // Try to decode the data anyway
   }

   /* The actual decoding */
   FUNC2(&avpkt);
   avpkt.data = in->length ? in->data + in->offset : 0;
   avpkt.size = in->length;
   module->output_size = module->output_buffer_size;
   module->output = module->output_buffer;
   used = FUNC3(module->codec_context, (int16_t*)module->output,
                                &module->output_size, &avpkt);

   /* Check for errors */
   if (used < 0 || used > (int)in->length)
   {
      FUNC0("decoding failed (%i), discarding buffer", used);
      used = in->length;
   }

   module->pts = in->dts;
   if (module->pts == MMAL_TIME_UNKNOWN)
      module->pts = in->pts;

 end:
   in->offset += used;
   in->length -= used;

   if (in->length)
   {
      FUNC9(module->queue_in, in);
      return 1;
   }

   /* We want to keep the EOS buffer until all the frames have been flushed */
   if ((in->flags & MMAL_BUFFER_HEADER_FLAG_EOS) &&
       module->output_size)
   {
      FUNC9(module->queue_in, in);
      return 1;
   }

   /* Send EOS */
   if ((in->flags & MMAL_BUFFER_HEADER_FLAG_EOS) &&
       FUNC4(component, port_out) != MMAL_SUCCESS)
   {
      FUNC9(module->queue_in, in);
      return 0;
   }

   in->offset = 0;
   FUNC7(port_in, in);
   return 1;
}