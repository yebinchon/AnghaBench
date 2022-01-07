
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_3__ {int d; scalar_t__ const samples; } ;
typedef TYPE_1__ COVER_ctx_t ;


 int memcmp (scalar_t__ const,scalar_t__ const,int ) ;

__attribute__((used)) static int COVER_cmp(COVER_ctx_t *ctx, const void *lp, const void *rp) {
  U32 const lhs = *(U32 const *)lp;
  U32 const rhs = *(U32 const *)rp;
  return memcmp(ctx->samples + lhs, ctx->samples + rhs, ctx->d);
}
