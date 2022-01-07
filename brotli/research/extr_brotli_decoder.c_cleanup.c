
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fin; scalar_t__ fout; scalar_t__ input_buffer; scalar_t__ output_buffer; scalar_t__ decoder; } ;
typedef TYPE_1__ Context ;


 int BrotliDecoderDestroyInstance (scalar_t__) ;
 int fclose (scalar_t__) ;
 int free (scalar_t__) ;

void cleanup(Context* ctx) {
  if (ctx->decoder) BrotliDecoderDestroyInstance(ctx->decoder);
  if (ctx->output_buffer) free(ctx->output_buffer);
  if (ctx->input_buffer) free(ctx->input_buffer);
  if (ctx->fout) fclose(ctx->fout);
  if (ctx->fin) fclose(ctx->fin);
}
