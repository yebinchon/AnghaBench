
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__** input; int callback; TYPE_2__* user_data; } ;
struct TYPE_9__ {int buffer_num; int buffer_size; int buffer_size_min; TYPE_1__* format; } ;
struct TYPE_8__ {TYPE_4__* mmal; } ;
struct TYPE_7__ {int encoding; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ BRCMJPEG_T ;
typedef int BRCMJPEG_STATUS_T ;


 int BRCMJPEG_ERROR_INIT ;
 int BRCMJPEG_SUCCESS ;
 int CHECK_MMAL_STATUS (int ,int ,char*) ;
 int INIT ;
 int LOG_DEBUG (char*,int ) ;
 int MMAL_COMPONENT_IMAGE_DECODE ;
 int MMAL_ENCODING_JPEG ;
 int brcmjpeg_mmal_cb ;
 int mmal_port_format_commit (TYPE_3__*) ;
 int mmal_wrapper_create (TYPE_4__**,int ) ;
 int mmal_wrapper_port_enable (TYPE_3__*,int ) ;

__attribute__((used)) static BRCMJPEG_STATUS_T brcmjpeg_init_decoder(BRCMJPEG_T *ctx)
{
   MMAL_STATUS_T status;
   BRCMJPEG_STATUS_T err = BRCMJPEG_SUCCESS;


   status = mmal_wrapper_create(&ctx->mmal, MMAL_COMPONENT_IMAGE_DECODE);
   CHECK_MMAL_STATUS(status, INIT, "failed to create decoder");
   ctx->mmal->user_data = ctx;
   ctx->mmal->callback = brcmjpeg_mmal_cb;


   ctx->mmal->input[0]->format->encoding = MMAL_ENCODING_JPEG;
   status = mmal_port_format_commit(ctx->mmal->input[0]);
   CHECK_MMAL_STATUS(status, INIT, "failed to commit input port format");

   ctx->mmal->input[0]->buffer_size = ctx->mmal->input[0]->buffer_size_min;
   ctx->mmal->input[0]->buffer_num = 3;
   status = mmal_wrapper_port_enable(ctx->mmal->input[0], 0);
   CHECK_MMAL_STATUS(status, INIT, "failed to enable input port");

   LOG_DEBUG("decoder initialised (input chunk size %i)",
      ctx->mmal->input[0]->buffer_size);
   return BRCMJPEG_SUCCESS;

 error:
   return BRCMJPEG_ERROR_INIT;
}
