
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVBSFContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_WB16 (scalar_t__,int) ;
 int ENOMEM ;
 int av_new_packet (TYPE_1__*,int) ;
 int av_packet_copy_props (TYPE_1__*,TYPE_1__*) ;
 int av_packet_free (TYPE_1__**) ;
 int av_packet_unref (TYPE_1__*) ;
 int ff_bsf_get_packet (int *,TYPE_1__**) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int text2movsub(AVBSFContext *ctx, AVPacket *out)
{
    AVPacket *in;
    int ret = 0;

    ret = ff_bsf_get_packet(ctx, &in);
    if (ret < 0)
        return ret;

    if (in->size > 0xffff) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    ret = av_new_packet(out, in->size + 2);
    if (ret < 0) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    ret = av_packet_copy_props(out, in);
    if (ret < 0)
        goto fail;

    AV_WB16(out->data, in->size);
    memcpy(out->data + 2, in->data, in->size);

fail:
    if (ret < 0)
        av_packet_unref(out);
    av_packet_free(&in);
    return ret;
}
