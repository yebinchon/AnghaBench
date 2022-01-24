#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__** output; int /*<<< orphan*/  control; int /*<<< orphan*/  callback; TYPE_2__* user_data; } ;
struct TYPE_9__ {int buffer_num; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer_size_min; TYPE_1__* format; } ;
struct TYPE_8__ {TYPE_4__* mmal; } ;
struct TYPE_7__ {int /*<<< orphan*/  encoding; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ BRCMJPEG_T ;
typedef  int /*<<< orphan*/  BRCMJPEG_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMJPEG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_COMPONENT_IMAGE_ENCODE ; 
 int /*<<< orphan*/  MMAL_ENCODING_JPEG ; 
 int /*<<< orphan*/  MMAL_PARAMETER_EXIF_DISABLE ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 int /*<<< orphan*/  brcmjpeg_mmal_cb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BRCMJPEG_STATUS_T FUNC6(BRCMJPEG_T *ctx)
{
   MMAL_STATUS_T status;
   BRCMJPEG_STATUS_T err = BRCMJPEG_SUCCESS;

   /* Create encoder component */
   status = FUNC4(&ctx->mmal, MMAL_COMPONENT_IMAGE_ENCODE);
   FUNC0(status, INIT, "failed to create encoder");
   ctx->mmal->user_data = ctx;
   ctx->mmal->callback = brcmjpeg_mmal_cb;

   /* Configure things that won't change from encode to encode */
   FUNC3(ctx->mmal->control,
      MMAL_PARAMETER_EXIF_DISABLE, MMAL_TRUE);

   ctx->mmal->output[0]->format->encoding = MMAL_ENCODING_JPEG;
   status = FUNC2(ctx->mmal->output[0]);
   FUNC0(status, INIT, "failed to commit output port format");

   ctx->mmal->output[0]->buffer_size = ctx->mmal->output[0]->buffer_size_min;
   ctx->mmal->output[0]->buffer_num = 3;
   status = FUNC5(ctx->mmal->output[0], 0);
   FUNC0(status, INIT, "failed to enable output port");

   FUNC1("encoder initialised (output chunk size %i)",
      ctx->mmal->output[0]->buffer_size);
   return BRCMJPEG_SUCCESS;

 error:
   return err;
}