#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_20__ {scalar_t__ opaque; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  vformat; } ;
struct TYPE_19__ {TYPE_2__** output; TYPE_2__** input; int /*<<< orphan*/  output_num; int /*<<< orphan*/  input_num; } ;
struct TYPE_16__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {int member_1; int /*<<< orphan*/  hdr; TYPE_1__ member_0; } ;
struct TYPE_17__ {scalar_t__ buffer_size; scalar_t__ buffer_size_recommended; scalar_t__ buffer_size_min; scalar_t__ buffer_num; scalar_t__ buffer_num_recommended; scalar_t__ buffer_num_min; TYPE_10__* format; } ;
struct TYPE_15__ {scalar_t__ encoding; int /*<<< orphan*/  bitrate; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_PARAMETER_BOOLEAN_T ;
typedef  TYPE_4__ MMAL_COMPONENT_T ;
typedef  TYPE_5__ MMALCAM_BEHAVIOUR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER ; 
 char* MMAL_COMPONENT_DEFAULT_VIDEO_ENCODER ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 scalar_t__ MMAL_ENCODING_JPEG ; 
 scalar_t__ MMAL_ENCODING_OPAQUE ; 
 int /*<<< orphan*/  MMAL_ENOSYS ; 
 int /*<<< orphan*/  MMAL_PARAMETER_ZERO_COPY ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static MMAL_COMPONENT_T *FUNC10(MMALCAM_BEHAVIOUR_T *behaviour, MMAL_STATUS_T *status)
{
   MMAL_COMPONENT_T *encoder = 0;
   MMAL_PORT_T *encoder_input = NULL, *encoder_output = NULL;
   const char *component_name = MMAL_COMPONENT_DEFAULT_VIDEO_ENCODER;
   uint32_t encoding;

   /* Set the port format */
   if (FUNC9(behaviour->vformat, 0, 0, &encoding))
   {
      *status = MMAL_EINVAL;
      goto error;
   }

   if (encoding == MMAL_ENCODING_JPEG)
      component_name = MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER;

   *status = FUNC3(component_name, &encoder);
   if(*status != MMAL_SUCCESS)
   {
      FUNC0("couldn't create video encoder");
      goto error;
   }
   if(!encoder->input_num || !encoder->output_num)
   {
      FUNC0("video encoder doesn't have input/output ports");
      *status = MMAL_EINVAL;
      goto error;
   }

   encoder_input = encoder->input[0];
   encoder_output = encoder->output[0];

   FUNC6(encoder_output->format, encoder_input->format);
   encoder_output->format->encoding = encoding;
   encoder_output->format->bitrate = behaviour->bit_rate;
   *status = FUNC7(encoder_output);
   if(*status != MMAL_SUCCESS)
   {
      FUNC0("format not set on video encoder output port");
      goto error;
   }
   encoder_output->buffer_size = encoder_output->buffer_size_recommended;
   if (encoder_output->buffer_size < encoder_output->buffer_size_min)
      encoder_output->buffer_size = encoder_output->buffer_size_min;
   encoder_output->buffer_num = encoder_output->buffer_num_recommended;
   if (encoder_output->buffer_num < encoder_output->buffer_num_min)
      encoder_output->buffer_num = encoder_output->buffer_num_min;

   if (FUNC2())
   {
      MMAL_PARAMETER_BOOLEAN_T param_zc =
         {{MMAL_PARAMETER_ZERO_COPY, sizeof(MMAL_PARAMETER_BOOLEAN_T)}, 1};
      *status = FUNC8(encoder_output, &param_zc.hdr);
      if (*status != MMAL_SUCCESS && *status != MMAL_ENOSYS)
      {
         FUNC0("failed to set zero copy on encoder output");
         goto error;
      }
      *status = FUNC8(encoder_input, &param_zc.hdr);
      if (*status != MMAL_SUCCESS && *status != MMAL_ENOSYS)
      {
         FUNC0("failed to set zero copy on encoder input");
         goto error;
      }
      FUNC1("enabled zero copy on encoder");
   }

   if (behaviour->opaque)
   {
      encoder_input->format->encoding = MMAL_ENCODING_OPAQUE;
   }

   /* Enable component */
   *status = FUNC5(encoder);
   if(*status)
   {
      FUNC0("video encoder component couldn't be enabled");
      goto error;
   }

   return encoder;

 error:
   if(encoder) FUNC4(encoder);
   return 0;
}