
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cbc; } ;
typedef TYPE_1__ VAAPIEncodeH264Context ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int data_size; int data_bit_padding; int data; } ;
typedef TYPE_2__ CodedBitstreamFragment ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOSPC ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int ff_cbs_write_fragment_data (int ,TYPE_2__*) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static int vaapi_encode_h264_write_access_unit(AVCodecContext *avctx,
                                               char *data, size_t *data_len,
                                               CodedBitstreamFragment *au)
{
    VAAPIEncodeH264Context *priv = avctx->priv_data;
    int err;

    err = ff_cbs_write_fragment_data(priv->cbc, au);
    if (err < 0) {
        av_log(avctx, AV_LOG_ERROR, "Failed to write packed header.\n");
        return err;
    }

    if (*data_len < 8 * au->data_size - au->data_bit_padding) {
        av_log(avctx, AV_LOG_ERROR, "Access unit too large: "
               "%zu < %zu.\n", *data_len,
               8 * au->data_size - au->data_bit_padding);
        return AVERROR(ENOSPC);
    }

    memcpy(data, au->data, au->data_size);
    *data_len = 8 * au->data_size - au->data_bit_padding;

    return 0;
}
