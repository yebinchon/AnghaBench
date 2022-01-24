#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_14__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  ac3_spdif_header ;
struct TYPE_36__ {scalar_t__ status; } ;
struct TYPE_35__ {TYPE_6__** output; TYPE_6__** input; TYPE_3__* priv; } ;
struct TYPE_34__ {int /*<<< orphan*/  format; } ;
struct TYPE_33__ {TYPE_5__* priv; TYPE_14__* format; int /*<<< orphan*/  name; } ;
struct TYPE_32__ {scalar_t__ (* pf_set_format ) (TYPE_6__*) ;TYPE_4__* module; } ;
struct TYPE_31__ {int /*<<< orphan*/  queue; scalar_t__ needs_configuring; } ;
struct TYPE_30__ {TYPE_9__* module; } ;
struct TYPE_28__ {unsigned int sample_rate; } ;
struct TYPE_29__ {TYPE_1__ audio; } ;
struct TYPE_27__ {scalar_t__ encoding; TYPE_2__* es; } ;
struct TYPE_26__ {int length; int flags; unsigned int alloc_size; int* data; int offset; int /*<<< orphan*/  dts; scalar_t__ pts; scalar_t__ cmd; } ;
typedef  TYPE_6__ MMAL_PORT_T ;
typedef  TYPE_7__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  TYPE_8__ MMAL_COMPONENT_T ;
typedef  TYPE_9__ MMAL_COMPONENT_MODULE_T ;
typedef  TYPE_10__ MMAL_BUFFER_HEADER_T ;
typedef  int MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int) ; 
 int MMAL_BUFFER_HEADER_FLAG_CONFIG ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENCODING_EAC3 ; 
 int FUNC3 (unsigned int,unsigned int) ; 
 scalar_t__ MMAL_SUCCESS ; 
 unsigned int SPDIF_AC3_FRAME_SIZE ; 
 unsigned int SPDIF_EAC3_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*) ; 
 scalar_t__ FUNC8 (TYPE_8__*,scalar_t__) ; 
 TYPE_7__* FUNC9 (TYPE_10__*) ; 
 scalar_t__ FUNC10 (TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_10__*) ; 
 TYPE_10__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,TYPE_6__*,TYPE_14__*) ; 
 scalar_t__ FUNC15 (TYPE_6__*) ; 

__attribute__((used)) static MMAL_BOOL_T FUNC16(MMAL_COMPONENT_T *component)
{
   static const uint8_t ac3_spdif_header[6] = {0x72,0xF8,0x1F,0x4E,0x1, 0};
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_PORT_T *port_in = component->input[0];
   MMAL_PORT_T *port_out = component->output[0];
   MMAL_BUFFER_HEADER_T *in, *out;
   unsigned int i, sample_rate, frame_size, spdif_frame_size;
   uint8_t *in_data;

   if (port_out->priv->module->needs_configuring)
      return 0;

   in = FUNC12(port_in->priv->module->queue);
   if (!in)
      return 0;

   /* Handle event buffers */
   if (in->cmd)
   {
      MMAL_EVENT_FORMAT_CHANGED_T *event = FUNC9(in);
      if (event)
      {
         module->status = FUNC10(port_in->format, event->format);
         if (module->status == MMAL_SUCCESS)
            module->status = port_in->priv->pf_set_format(port_in);
         if (module->status != MMAL_SUCCESS)
         {
            FUNC1("format not set on port %s %p (%i)", port_in->name, port_in, module->status);
            if (FUNC8(component, module->status) != MMAL_SUCCESS)
               FUNC1("unable to send an error event buffer");
         }
      }
      else
      {
         FUNC1("discarding event %i on port %s %p", (int)in->cmd, port_in->name, port_in);
      }

      in->length = 0;
      FUNC11(port_in, in);
      return 1;
   }

   /* Don't do anything if we've already seen an error */
   if (module->status != MMAL_SUCCESS)
   {
      FUNC13(port_in->priv->module->queue, in);
      return 0;
   }

   /* Discard empty buffers */
   if (!in->length && !in->flags)
   {
      FUNC11(port_in, in);
      return 1;
   }
   /* Discard codec config data as it's not needed */
   if (in->flags & MMAL_BUFFER_HEADER_FLAG_CONFIG)
   {
      FUNC0("config buffer %ibytes", in->length);
      in->length = 0;
      FUNC11(port_in, in);
      return 1;
   }

   out = FUNC12(port_out->priv->module->queue);
   if (!out)
   {
      FUNC13(port_in->priv->module->queue, in);
      return 0;
   }

   spdif_frame_size = SPDIF_AC3_FRAME_SIZE;
   if (port_out->format->encoding == MMAL_ENCODING_EAC3)
      spdif_frame_size = SPDIF_EAC3_FRAME_SIZE;

   /* Sanity check the output buffer is big enough */
   if (out->alloc_size < spdif_frame_size)
   {
      module->status = MMAL_EINVAL;
      if (FUNC8(component, module->status) != MMAL_SUCCESS)
         FUNC1("unable to send an error event buffer");
      FUNC13(port_in->priv->module->queue, in);
      FUNC13(port_out->priv->module->queue, out);
      return 0;
   }

   /* Special case for empty buffers carrying a flag */
   if (!in->length && in->flags)
   {
      out->length = 0;
      goto end;
   }

   FUNC0("frame: %lld, size %i", in->pts, in->length);
   FUNC6(out);
   FUNC6(in);
   in_data = in->data + in->offset;

   /* Sanity check we're dealing with an AC3 frame */
   if (in->length < 5)
   {
      FUNC1("invalid data size (%i bytes)", in->length);
      goto discard;
   }

   if (!(in_data[0] == 0x0B || in_data[1] == 0x77) &&
       !(in_data[0] == 0x77 || in_data[1] == 0x0B))
   {
      FUNC1("invalid data (%i bytes): %2.2x,%2.2x,%2.2x,%2.2x",
         in->length, in_data[0], in_data[1], in_data[2], in_data[3]);
      goto discard;
   }

   /* We need to make sure we use the right sample rate
    * to be able to play this at the right rate */
   if ((in_data[4] & 0xC0) == 0x40) sample_rate = 44100;
   else if ((in_data[4] & 0xC0) == 0x80) sample_rate = 32000;
   else sample_rate = 48000;

   /* If the sample rate changes, stop everything we're doing
    * and signal the format change. */
   if (sample_rate != port_out->format->es->audio.sample_rate)
   {
      FUNC2("format change: %i->%i",
         port_out->format->es->audio.sample_rate, sample_rate);
      port_in->format->es->audio.sample_rate = sample_rate;
      FUNC14(component, port_out, port_in->format);
      FUNC7(in);
      FUNC7(out);
      FUNC13(port_in->priv->module->queue, in);
      FUNC13(port_out->priv->module->queue, out);
      return 0;
   }

   /* Build our S/PDIF frame. We assume that we need to send
    * little endian S/PDIF data. */
   if (in->length > spdif_frame_size - 8)
      FUNC1("frame too big, truncating (%i/%i bytes)",
         in->length, spdif_frame_size - 8);
   frame_size = FUNC3(in->length, spdif_frame_size - 8) / 2;
   FUNC4(out->data, ac3_spdif_header, sizeof(ac3_spdif_header));
   out->data[5] = in_data[5] & 0x7; /* bsmod */
   out->data[6] = frame_size & 0xFF;
   out->data[7] = frame_size >> 8;

   /* Copy the AC3 data, reverting the endianness if required */
   if (in_data[0] == 0x0B)
   {
      for (i = 0; i < frame_size; i++)
      {
         out->data[8+i*2] = in_data[in->offset+i*2+1];
         out->data[8+i*2+1] = in_data[in->offset+i*2];
      }
   }
   else
      FUNC4(out->data + 8, in_data, in->length);

   /* The S/PDIF frame needs to be padded */
   FUNC5(out->data + 8 + frame_size * 2, 0,
      spdif_frame_size - frame_size * 2 - 8);
   FUNC7(in);
   FUNC7(out);
   out->length     = spdif_frame_size;
 end:
   out->offset     = 0;
   out->flags      = in->flags;
   out->pts        = in->pts;
   out->dts        = in->dts;

   /* Send buffers back */
   in->length = 0;
   FUNC11(port_in, in);
   FUNC11(port_out, out);
   return 1;

 discard:
   FUNC7(in);
   FUNC7(out);
   in->length = 0;
   FUNC13(port_out->priv->module->queue, out);
   FUNC11(port_in, in);
   return 1;
}