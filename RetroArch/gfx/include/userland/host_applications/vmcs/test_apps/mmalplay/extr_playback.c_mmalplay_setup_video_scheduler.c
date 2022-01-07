
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int name; } ;
struct TYPE_7__ {int copy_output; } ;
struct TYPE_9__ {int video_clock; TYPE_1__ options; } ;
struct TYPE_8__ {int * clock; TYPE_6__** output; TYPE_6__** input; int name; int clock_num; int output_num; int input_num; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMALPLAY_T ;


 int LOG_ERROR (char*,int ) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_PARAMETER_ZERO_COPY ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_TRUE ;
 scalar_t__ mmal_port_parameter_set_boolean (TYPE_6__*,int ,int ) ;

__attribute__((used)) static MMAL_STATUS_T mmalplay_setup_video_scheduler(MMALPLAY_T *ctx, MMAL_COMPONENT_T *scheduler)
{
   MMAL_STATUS_T status = MMAL_EINVAL;

   if (!scheduler->input_num || !scheduler->output_num || !scheduler->clock_num)
   {
      LOG_ERROR("%s doesn't have input/output/clock ports", scheduler->name);
      goto error;
   }


   if (!ctx->options.copy_output)
   {
      status = mmal_port_parameter_set_boolean(scheduler->input[0],
            MMAL_PARAMETER_ZERO_COPY, MMAL_TRUE);
      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
      {
         LOG_ERROR("failed to set zero copy on %s", scheduler->input[0]->name);
         goto error;
      }
      status = mmal_port_parameter_set_boolean(scheduler->output[0],
            MMAL_PARAMETER_ZERO_COPY, MMAL_TRUE);
      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
      {
         LOG_ERROR("failed to set zero copy on %s", scheduler->output[0]->name);
         goto error;
      }
   }


   ctx->video_clock = scheduler->clock[0];

   status = MMAL_SUCCESS;

 error:
   return status;
}
