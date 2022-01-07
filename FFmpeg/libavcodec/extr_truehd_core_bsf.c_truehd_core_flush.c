
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hdr; } ;
typedef TYPE_1__ TrueHDCoreContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVBSFContext ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void truehd_core_flush(AVBSFContext *ctx)
{
    TrueHDCoreContext *s = ctx->priv_data;
    memset(&s->hdr, 0, sizeof(s->hdr));
}
