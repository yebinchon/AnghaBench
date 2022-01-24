#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int filter_len; int filter_stride; int* filter_pos; int /*<<< orphan*/ * filter; } ;
struct scaler_ctx {int scaler_type; int in_width; int out_width; int out_height; int in_height; TYPE_1__ vert; TYPE_1__ horiz; int /*<<< orphan*/  scaler_special; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
#define  SCALER_TYPE_BILINEAR 131 
#define  SCALER_TYPE_POINT 130 
#define  SCALER_TYPE_SINC 129 
#define  SCALER_TYPE_UNKNOWN 128 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int,double) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  scaler_argb8888_point_special ; 
 int FUNC6 (struct scaler_ctx*) ; 

bool FUNC7(struct scaler_ctx *ctx)
{
   int x_pos, x_step, y_pos, y_step;
   int sinc_size = 0;

   switch (ctx->scaler_type)
   {
      case SCALER_TYPE_POINT:
         ctx->horiz.filter_len    = 1;
         ctx->horiz.filter_stride = 1;
         ctx->vert.filter_len     = 1;
         ctx->vert.filter_stride  = 1;
         break;
      case SCALER_TYPE_BILINEAR:
         ctx->horiz.filter_len    = 2;
         ctx->horiz.filter_stride = 2;
         ctx->vert.filter_len     = 2;
         ctx->vert.filter_stride  = 2;
         break;
      case SCALER_TYPE_SINC:
         sinc_size                = 8 * ((ctx->in_width > ctx->out_width)
               ? FUNC5(ctx->in_width / ctx->out_width) : 1);
         ctx->horiz.filter_len    = sinc_size;
         ctx->horiz.filter_stride = sinc_size;
         ctx->vert.filter_len     = sinc_size;
         ctx->vert.filter_stride  = sinc_size;
         break;
      case SCALER_TYPE_UNKNOWN:
      default:
         return false;
   }

   ctx->horiz.filter     = (int16_t*)FUNC0(sizeof(int16_t), ctx->horiz.filter_stride * ctx->out_width);
   ctx->horiz.filter_pos = (int*)FUNC0(sizeof(int), ctx->out_width);

   ctx->vert.filter      = (int16_t*)FUNC0(sizeof(int16_t), ctx->vert.filter_stride * ctx->out_height);
   ctx->vert.filter_pos  = (int*)FUNC0(sizeof(int), ctx->out_height);

   if (!ctx->horiz.filter || !ctx->vert.filter)
      return false;

   x_step = (1 << 16) * ctx->in_width / ctx->out_width;
   y_step = (1 << 16) * ctx->in_height / ctx->out_height;

   switch (ctx->scaler_type)
   {
      case SCALER_TYPE_POINT:
         x_pos  = (1 << 15) * ctx->in_width / ctx->out_width   - (1 << 15);
         y_pos  = (1 << 15) * ctx->in_height / ctx->out_height - (1 << 15);

         FUNC3(&ctx->horiz, ctx->out_width,  x_pos, x_step);
         FUNC3(&ctx->vert,  ctx->out_height, y_pos, y_step);

         ctx->scaler_special = scaler_argb8888_point_special;
         break;

      case SCALER_TYPE_BILINEAR:
         x_pos  = (1 << 15) * ctx->in_width / ctx->out_width   - (1 << 15);
         y_pos  = (1 << 15) * ctx->in_height / ctx->out_height - (1 << 15);

         FUNC2(&ctx->horiz, ctx->out_width,  x_pos, x_step);
         FUNC2(&ctx->vert,  ctx->out_height, y_pos, y_step);
         break;

      case SCALER_TYPE_SINC:
         /* Need to expand the filter when downsampling
          * to get a proper low-pass effect. */

         x_pos  = (1 << 15) * ctx->in_width  / ctx->out_width  - (1 << 15) - (sinc_size << 15);
         y_pos  = (1 << 15) * ctx->in_height / ctx->out_height - (1 << 15) - (sinc_size << 15);

         FUNC4(&ctx->horiz, ctx->out_width, x_pos, x_step,
               ctx->in_width  > ctx->out_width  ? (double)ctx->out_width  / ctx->in_width  : 1.0);
         FUNC4(&ctx->vert, ctx->out_height, y_pos, y_step,
               ctx->in_height > ctx->out_height ? (double)ctx->out_height / ctx->in_height : 1.0
               );
         break;
      case SCALER_TYPE_UNKNOWN:
         break;
   }

   /* Makes sure that we never sample outside our rectangle. */
   FUNC1(&ctx->horiz, ctx->out_width, ctx->in_width);
   FUNC1(&ctx->vert,  ctx->out_height, ctx->in_height);

   return FUNC6(ctx);
}