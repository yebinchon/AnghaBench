
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VAAPIEncodePicture ;
struct TYPE_6__ {int cbc; int picture_coding_extension; int picture_header; int current_fragment; } ;
typedef TYPE_1__ VAAPIEncodeMPEG2Context ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef int CodedBitstreamFragment ;
typedef TYPE_2__ AVCodecContext ;


 int MPEG2_START_EXTENSION ;
 int MPEG2_START_PICTURE ;
 int ff_cbs_fragment_reset (int ,int *) ;
 int vaapi_encode_mpeg2_add_header (TYPE_2__*,int *,int ,int *) ;
 int vaapi_encode_mpeg2_write_fragment (TYPE_2__*,char*,size_t*,int *) ;

__attribute__((used)) static int vaapi_encode_mpeg2_write_picture_header(AVCodecContext *avctx,
                                                   VAAPIEncodePicture *pic,
                                                   char *data, size_t *data_len)
{
    VAAPIEncodeMPEG2Context *priv = avctx->priv_data;
    CodedBitstreamFragment *frag = &priv->current_fragment;
    int err;

    err = vaapi_encode_mpeg2_add_header(avctx, frag, MPEG2_START_PICTURE,
                                        &priv->picture_header);
    if (err < 0)
        goto fail;

    err = vaapi_encode_mpeg2_add_header(avctx, frag, MPEG2_START_EXTENSION,
                                        &priv->picture_coding_extension);
    if (err < 0)
        goto fail;

    err = vaapi_encode_mpeg2_write_fragment(avctx, data, data_len, frag);
fail:
    ff_cbs_fragment_reset(priv->cbc, frag);
    return 0;
}
