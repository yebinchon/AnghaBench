
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int (* extract ) (TYPE_2__*,int *,int **,int*) ;} ;
typedef TYPE_1__ ExtractExtradataContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVBSFContext ;


 int AV_PKT_DATA_NEW_EXTRADATA ;
 int av_freep (int **) ;
 int av_packet_add_side_data (int *,int ,int *,int) ;
 int av_packet_unref (int *) ;
 int ff_bsf_get_packet_ref (TYPE_2__*,int *) ;
 int stub1 (TYPE_2__*,int *,int **,int*) ;

__attribute__((used)) static int extract_extradata_filter(AVBSFContext *ctx, AVPacket *pkt)
{
    ExtractExtradataContext *s = ctx->priv_data;
    uint8_t *extradata = ((void*)0);
    int extradata_size;
    int ret = 0;

    ret = ff_bsf_get_packet_ref(ctx, pkt);
    if (ret < 0)
        return ret;

    ret = s->extract(ctx, pkt, &extradata, &extradata_size);
    if (ret < 0)
        goto fail;

    if (extradata) {
        ret = av_packet_add_side_data(pkt, AV_PKT_DATA_NEW_EXTRADATA,
                                      extradata, extradata_size);
        if (ret < 0) {
            av_freep(&extradata);
            goto fail;
        }
    }

    return 0;

fail:
    av_packet_unref(pkt);
    return ret;
}
