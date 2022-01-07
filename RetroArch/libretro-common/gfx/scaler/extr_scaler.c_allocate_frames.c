
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {int stride; int * frame; } ;
struct TYPE_5__ {int stride; int * frame; } ;
struct TYPE_4__ {int stride; int width; int height; int * frame; } ;
struct scaler_ctx {int out_width; int in_height; scalar_t__ in_fmt; int in_width; scalar_t__ out_fmt; int out_height; TYPE_3__ output; TYPE_2__ input; TYPE_1__ scaled; } ;


 scalar_t__ SCALER_FMT_ARGB8888 ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static bool allocate_frames(struct scaler_ctx *ctx)
{
   uint64_t *scaled_frame = ((void*)0);
   ctx->scaled.stride = ((ctx->out_width + 7) & ~7) * sizeof(uint64_t);
   ctx->scaled.width = ctx->out_width;
   ctx->scaled.height = ctx->in_height;
   scaled_frame = (uint64_t*)calloc(sizeof(uint64_t),
            (ctx->scaled.stride * ctx->scaled.height) >> 3);

   if (!scaled_frame)
      return 0;

   ctx->scaled.frame = scaled_frame;

   if (ctx->in_fmt != SCALER_FMT_ARGB8888)
   {
      uint32_t *input_frame = ((void*)0);
      ctx->input.stride = ((ctx->in_width + 7) & ~7) * sizeof(uint32_t);
      input_frame = (uint32_t*)calloc(sizeof(uint32_t),
               (ctx->input.stride * ctx->in_height) >> 2);

      if (!input_frame)
         return 0;

      ctx->input.frame = input_frame;
   }

   if (ctx->out_fmt != SCALER_FMT_ARGB8888)
   {
      uint32_t *output_frame = ((void*)0);
      ctx->output.stride = ((ctx->out_width + 7) & ~7) * sizeof(uint32_t);

      output_frame = (uint32_t*)calloc(sizeof(uint32_t),
               (ctx->output.stride * ctx->out_height) >> 2);

      if (!output_frame)
         return 0;

      ctx->output.frame = output_frame;
   }

   return 1;
}
