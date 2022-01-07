
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int filter_len; int* filter_pos; } ;
struct TYPE_3__ {int filter_len; int* filter_pos; } ;
struct scaler_ctx {int in_width; int out_width; int in_height; int out_height; TYPE_2__ vert; TYPE_1__ horiz; } ;


 int fprintf (int ,char*,int,int) ;
 int stderr ;

__attribute__((used)) static bool validate_filter(struct scaler_ctx *ctx)
{
   int i;
   int max_h_pos;
   int max_w_pos = ctx->in_width - ctx->horiz.filter_len;

   for (i = 0; i < ctx->out_width; i++)
   {
      if (ctx->horiz.filter_pos[i] > max_w_pos || ctx->horiz.filter_pos[i] < 0)
      {
         fprintf(stderr, "Out X = %d => In X = %d\n", i, ctx->horiz.filter_pos[i]);
         return 0;
      }
   }

   max_h_pos = ctx->in_height - ctx->vert.filter_len;

   for (i = 0; i < ctx->out_height; i++)
   {
      if (ctx->vert.filter_pos[i] > max_h_pos || ctx->vert.filter_pos[i] < 0)
      {
         fprintf(stderr, "Out Y = %d => In Y = %d\n", i, ctx->vert.filter_pos[i]);
         return 0;
      }
   }

   return 1;
}
