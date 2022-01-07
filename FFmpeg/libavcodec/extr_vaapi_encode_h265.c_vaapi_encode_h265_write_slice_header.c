
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VAAPIEncodeSlice ;
typedef int VAAPIEncodePicture ;
struct TYPE_6__ {int cbc; int raw_slice; scalar_t__ aud_needed; int raw_aud; int current_access_unit; } ;
typedef TYPE_1__ VAAPIEncodeH265Context ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef int CodedBitstreamFragment ;
typedef TYPE_2__ AVCodecContext ;


 int ff_cbs_fragment_reset (int ,int *) ;
 int vaapi_encode_h265_add_nal (TYPE_2__*,int *,int *) ;
 int vaapi_encode_h265_write_access_unit (TYPE_2__*,char*,size_t*,int *) ;

__attribute__((used)) static int vaapi_encode_h265_write_slice_header(AVCodecContext *avctx,
                                                VAAPIEncodePicture *pic,
                                                VAAPIEncodeSlice *slice,
                                                char *data, size_t *data_len)
{
    VAAPIEncodeH265Context *priv = avctx->priv_data;
    CodedBitstreamFragment *au = &priv->current_access_unit;
    int err;

    if (priv->aud_needed) {
        err = vaapi_encode_h265_add_nal(avctx, au, &priv->raw_aud);
        if (err < 0)
            goto fail;
        priv->aud_needed = 0;
    }

    err = vaapi_encode_h265_add_nal(avctx, au, &priv->raw_slice);
    if (err < 0)
        goto fail;

    err = vaapi_encode_h265_write_access_unit(avctx, data, data_len, au);
fail:
    ff_cbs_fragment_reset(priv->cbc, au);
    return err;
}
