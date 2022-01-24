#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  copy_output; int /*<<< orphan*/  copy_input; scalar_t__ audio_passthrough; } ;
struct TYPE_9__ {TYPE_1__ options; } ;
struct TYPE_8__ {TYPE_6__** output; TYPE_6__** input; TYPE_6__* control; int /*<<< orphan*/  name; int /*<<< orphan*/  output_num; int /*<<< orphan*/  input_num; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_3__ MMALPLAY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOSYS ; 
 int /*<<< orphan*/  MMAL_PARAMETER_AUDIO_PASSTHROUGH ; 
 int /*<<< orphan*/  MMAL_PARAMETER_ZERO_COPY ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 scalar_t__ FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC3(MMALPLAY_T *ctx, MMAL_COMPONENT_T *decoder)
{
   MMAL_STATUS_T status = MMAL_EINVAL;

   if (!decoder->input_num || !decoder->output_num)
   {
      FUNC0("%s doesn't have input/output ports", decoder->name);
      goto error;
   }

   if (ctx->options.audio_passthrough)
   {
      status = FUNC2(decoder->control,
         MMAL_PARAMETER_AUDIO_PASSTHROUGH, MMAL_TRUE);
      if (status != MMAL_SUCCESS)
         FUNC1("could not set audio passthrough mode");
   }

   /* Enable Zero Copy if requested. This needs to be sent before enabling the port. */
   if (!ctx->options.copy_input)
   {
      status = FUNC2(decoder->input[0],
            MMAL_PARAMETER_ZERO_COPY, MMAL_TRUE);
      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
      {
         FUNC0("failed to set zero copy on %s", decoder->input[0]->name);
         goto error;
      }
   }
   if (!ctx->options.copy_output)
   {
      status = FUNC2(decoder->output[0],
            MMAL_PARAMETER_ZERO_COPY, MMAL_TRUE);
      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
      {
         FUNC0("failed to set zero copy on %s", decoder->output[0]->name);
         goto error;
      }
   }

   status = MMAL_SUCCESS;

 error:
   return status;
}