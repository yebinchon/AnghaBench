
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ decoder; scalar_t__ output_buffer; scalar_t__ input_buffer; scalar_t__ fout; scalar_t__ fin; } ;
typedef TYPE_1__ Context ;



void init(Context* ctx) {
  ctx->fin = 0;
  ctx->fout = 0;
  ctx->input_buffer = 0;
  ctx->output_buffer = 0;
  ctx->decoder = 0;
}
