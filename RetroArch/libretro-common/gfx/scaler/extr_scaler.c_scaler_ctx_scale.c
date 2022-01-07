
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int stride; void* frame; } ;
struct TYPE_3__ {void* frame; int stride; } ;
struct scaler_ctx {int in_stride; int out_stride; scalar_t__ in_fmt; scalar_t__ out_fmt; TYPE_2__ output; int out_height; int out_width; int (* out_pixconv ) (void*,void*,int ,int ,int,int) ;int (* scaler_vert ) (struct scaler_ctx*,void*,int) ;int (* scaler_horiz ) (struct scaler_ctx*,void const*,int) ;int in_height; int in_width; int (* scaler_special ) (struct scaler_ctx*,void*,void const*,int ,int ,int ,int ,int,int) ;TYPE_1__ input; int (* in_pixconv ) (void*,void const*,int ,int ,int,int) ;} ;


 scalar_t__ SCALER_FMT_ARGB8888 ;
 int stub1 (void*,void const*,int ,int ,int,int) ;
 int stub2 (struct scaler_ctx*,void*,void const*,int ,int ,int ,int ,int,int) ;
 int stub3 (struct scaler_ctx*,void const*,int) ;
 int stub4 (struct scaler_ctx*,void*,int) ;
 int stub5 (void*,void*,int ,int ,int,int) ;

void scaler_ctx_scale(struct scaler_ctx *ctx,
      void *output, const void *input)
{
   const void *input_frame = input;
   void *output_frame = output;
   int input_stride = ctx->in_stride;
   int output_stride = ctx->out_stride;

   if (ctx->in_fmt != SCALER_FMT_ARGB8888)
   {
      ctx->in_pixconv(ctx->input.frame, input,
            ctx->in_width, ctx->in_height,
            ctx->input.stride, ctx->in_stride);

      input_frame = ctx->input.frame;
      input_stride = ctx->input.stride;
   }

   if (ctx->out_fmt != SCALER_FMT_ARGB8888)
   {
      output_frame = ctx->output.frame;
      output_stride = ctx->output.stride;
   }


   if (ctx->scaler_special)
      ctx->scaler_special(ctx, output_frame, input_frame,
            ctx->out_width, ctx->out_height,
            ctx->in_width, ctx->in_height,
            output_stride, input_stride);
   else
   {

      if (ctx->scaler_horiz)
         ctx->scaler_horiz(ctx, input_frame, input_stride);
      if (ctx->scaler_vert)
         ctx->scaler_vert (ctx, output, output_stride);
   }

   if (ctx->out_fmt != SCALER_FMT_ARGB8888)
      ctx->out_pixconv(output, ctx->output.frame,
            ctx->out_width, ctx->out_height,
            ctx->out_stride, ctx->output.stride);
}
