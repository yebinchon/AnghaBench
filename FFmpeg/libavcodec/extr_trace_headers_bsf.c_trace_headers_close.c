
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbc; int fragment; } ;
typedef TYPE_1__ TraceHeadersContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVBSFContext ;


 int ff_cbs_close (int *) ;
 int ff_cbs_fragment_free (int ,int *) ;

__attribute__((used)) static void trace_headers_close(AVBSFContext *bsf)
{
    TraceHeadersContext *ctx = bsf->priv_data;

    ff_cbs_fragment_free(ctx->cbc, &ctx->fragment);
    ff_cbs_close(&ctx->cbc);
}
