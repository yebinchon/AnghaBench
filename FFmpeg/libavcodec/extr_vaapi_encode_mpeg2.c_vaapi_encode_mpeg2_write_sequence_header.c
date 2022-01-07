
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cbc; int gop_header; int sequence_display_extension; int sequence_extension; int sequence_header; int current_fragment; } ;
typedef TYPE_1__ VAAPIEncodeMPEG2Context ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef int CodedBitstreamFragment ;
typedef TYPE_2__ AVCodecContext ;


 int MPEG2_START_EXTENSION ;
 int MPEG2_START_GROUP ;
 int MPEG2_START_SEQUENCE_HEADER ;
 int ff_cbs_fragment_reset (int ,int *) ;
 int vaapi_encode_mpeg2_add_header (TYPE_2__*,int *,int ,int *) ;
 int vaapi_encode_mpeg2_write_fragment (TYPE_2__*,char*,size_t*,int *) ;

__attribute__((used)) static int vaapi_encode_mpeg2_write_sequence_header(AVCodecContext *avctx,
                                                    char *data, size_t *data_len)
{
    VAAPIEncodeMPEG2Context *priv = avctx->priv_data;
    CodedBitstreamFragment *frag = &priv->current_fragment;
    int err;

    err = vaapi_encode_mpeg2_add_header(avctx, frag, MPEG2_START_SEQUENCE_HEADER,
                                        &priv->sequence_header);
    if (err < 0)
        goto fail;

    err = vaapi_encode_mpeg2_add_header(avctx, frag, MPEG2_START_EXTENSION,
                                        &priv->sequence_extension);
    if (err < 0)
        goto fail;

    err = vaapi_encode_mpeg2_add_header(avctx, frag, MPEG2_START_EXTENSION,
                                        &priv->sequence_display_extension);
    if (err < 0)
        goto fail;

    err = vaapi_encode_mpeg2_add_header(avctx, frag, MPEG2_START_GROUP,
                                        &priv->gop_header);
    if (err < 0)
        goto fail;

    err = vaapi_encode_mpeg2_write_fragment(avctx, data, data_len, frag);
fail:
    ff_cbs_fragment_reset(priv->cbc, frag);
    return 0;
}
