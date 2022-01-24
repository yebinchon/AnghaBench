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
struct TYPE_10__ {TYPE_3__** input; int /*<<< orphan*/  callback; TYPE_2__* user_data; } ;
struct TYPE_9__ {int buffer_num; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer_size_min; TYPE_1__* format; } ;
struct TYPE_8__ {TYPE_4__* mmal; } ;
struct TYPE_7__ {int /*<<< orphan*/  encoding; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ BRCMJPEG_T ;
typedef  int /*<<< orphan*/  BRCMJPEG_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMJPEG_ERROR_INIT ; 
 int /*<<< orphan*/  BRCMJPEG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_COMPONENT_IMAGE_DECODE ; 
 int /*<<< orphan*/  MMAL_ENCODING_JPEG ; 
 int /*<<< orphan*/  brcmjpeg_mmal_cb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BRCMJPEG_STATUS_T FUNC5(BRCMJPEG_T *ctx)
{
   MMAL_STATUS_T status;
   BRCMJPEG_STATUS_T err = BRCMJPEG_SUCCESS;

   /* Create decoder component */
   status = FUNC3(&ctx->mmal, MMAL_COMPONENT_IMAGE_DECODE);
   FUNC0(status, INIT, "failed to create decoder");
   ctx->mmal->user_data = ctx;
   ctx->mmal->callback = brcmjpeg_mmal_cb;

   /* Configure things that won't change from decode to decode */
   ctx->mmal->input[0]->format->encoding = MMAL_ENCODING_JPEG;
   status = FUNC2(ctx->mmal->input[0]);
   FUNC0(status, INIT, "failed to commit input port format");

   ctx->mmal->input[0]->buffer_size = ctx->mmal->input[0]->buffer_size_min;
   ctx->mmal->input[0]->buffer_num = 3;
   status = FUNC4(ctx->mmal->input[0], 0);
   FUNC0(status, INIT, "failed to enable input port");

   FUNC1("decoder initialised (input chunk size %i)",
      ctx->mmal->input[0]->buffer_size);
   return BRCMJPEG_SUCCESS;

 error:
   return BRCMJPEG_ERROR_INIT;
}