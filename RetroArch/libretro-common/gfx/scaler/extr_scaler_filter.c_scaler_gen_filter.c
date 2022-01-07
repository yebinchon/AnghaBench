
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int filter_len; int filter_stride; int* filter_pos; int * filter; } ;
struct scaler_ctx {int scaler_type; int in_width; int out_width; int out_height; int in_height; TYPE_1__ vert; TYPE_1__ horiz; int scaler_special; } ;
typedef int int16_t ;






 scalar_t__ calloc (int,int) ;
 int fixup_filter_sub (TYPE_1__*,int,double) ;
 int gen_filter_bilinear_sub (TYPE_1__*,int,int,int) ;
 int gen_filter_point_sub (TYPE_1__*,int,int,int) ;
 int gen_filter_sinc_sub (TYPE_1__*,int,int,int,double) ;
 int next_pow2 (int) ;
 int scaler_argb8888_point_special ;
 int validate_filter (struct scaler_ctx*) ;

bool scaler_gen_filter(struct scaler_ctx *ctx)
{
   int x_pos, x_step, y_pos, y_step;
   int sinc_size = 0;

   switch (ctx->scaler_type)
   {
      case 130:
         ctx->horiz.filter_len = 1;
         ctx->horiz.filter_stride = 1;
         ctx->vert.filter_len = 1;
         ctx->vert.filter_stride = 1;
         break;
      case 131:
         ctx->horiz.filter_len = 2;
         ctx->horiz.filter_stride = 2;
         ctx->vert.filter_len = 2;
         ctx->vert.filter_stride = 2;
         break;
      case 129:
         sinc_size = 8 * ((ctx->in_width > ctx->out_width)
               ? next_pow2(ctx->in_width / ctx->out_width) : 1);
         ctx->horiz.filter_len = sinc_size;
         ctx->horiz.filter_stride = sinc_size;
         ctx->vert.filter_len = sinc_size;
         ctx->vert.filter_stride = sinc_size;
         break;
      case 128:
      default:
         return 0;
   }

   ctx->horiz.filter = (int16_t*)calloc(sizeof(int16_t), ctx->horiz.filter_stride * ctx->out_width);
   ctx->horiz.filter_pos = (int*)calloc(sizeof(int), ctx->out_width);

   ctx->vert.filter = (int16_t*)calloc(sizeof(int16_t), ctx->vert.filter_stride * ctx->out_height);
   ctx->vert.filter_pos = (int*)calloc(sizeof(int), ctx->out_height);

   if (!ctx->horiz.filter || !ctx->vert.filter)
      return 0;

   x_step = (1 << 16) * ctx->in_width / ctx->out_width;
   y_step = (1 << 16) * ctx->in_height / ctx->out_height;

   switch (ctx->scaler_type)
   {
      case 130:
         x_pos = (1 << 15) * ctx->in_width / ctx->out_width - (1 << 15);
         y_pos = (1 << 15) * ctx->in_height / ctx->out_height - (1 << 15);

         gen_filter_point_sub(&ctx->horiz, ctx->out_width, x_pos, x_step);
         gen_filter_point_sub(&ctx->vert, ctx->out_height, y_pos, y_step);

         ctx->scaler_special = scaler_argb8888_point_special;
         break;

      case 131:
         x_pos = (1 << 15) * ctx->in_width / ctx->out_width - (1 << 15);
         y_pos = (1 << 15) * ctx->in_height / ctx->out_height - (1 << 15);

         gen_filter_bilinear_sub(&ctx->horiz, ctx->out_width, x_pos, x_step);
         gen_filter_bilinear_sub(&ctx->vert, ctx->out_height, y_pos, y_step);
         break;

      case 129:



         x_pos = (1 << 15) * ctx->in_width / ctx->out_width - (1 << 15) - (sinc_size << 15);
         y_pos = (1 << 15) * ctx->in_height / ctx->out_height - (1 << 15) - (sinc_size << 15);

         gen_filter_sinc_sub(&ctx->horiz, ctx->out_width, x_pos, x_step,
               ctx->in_width > ctx->out_width ? (double)ctx->out_width / ctx->in_width : 1.0);
         gen_filter_sinc_sub(&ctx->vert, ctx->out_height, y_pos, y_step,
               ctx->in_height > ctx->out_height ? (double)ctx->out_height / ctx->in_height : 1.0
               );
         break;
      case 128:
         break;
   }


   fixup_filter_sub(&ctx->horiz, ctx->out_width, ctx->in_width);
   fixup_filter_sub(&ctx->vert, ctx->out_height, ctx->in_height);

   return validate_filter(ctx);
}
