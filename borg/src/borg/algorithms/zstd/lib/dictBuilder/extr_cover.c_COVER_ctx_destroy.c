
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * offsets; int * dmerAt; int * freqs; int * suffix; } ;
typedef TYPE_1__ COVER_ctx_t ;


 int free (int *) ;

__attribute__((used)) static void COVER_ctx_destroy(COVER_ctx_t *ctx) {
  if (!ctx) {
    return;
  }
  if (ctx->suffix) {
    free(ctx->suffix);
    ctx->suffix = ((void*)0);
  }
  if (ctx->freqs) {
    free(ctx->freqs);
    ctx->freqs = ((void*)0);
  }
  if (ctx->dmerAt) {
    free(ctx->dmerAt);
    ctx->dmerAt = ((void*)0);
  }
  if (ctx->offsets) {
    free(ctx->offsets);
    ctx->offsets = ((void*)0);
  }
}
