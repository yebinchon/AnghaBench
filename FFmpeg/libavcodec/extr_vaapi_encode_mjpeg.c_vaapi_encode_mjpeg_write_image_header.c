
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VAAPIEncodeSlice ;
typedef int VAAPIEncodePicture ;
struct TYPE_10__ {int data_size; int data; } ;
struct TYPE_9__ {int cbc; int scan; int huffman_tables; scalar_t__ huffman; int frame_header; int quant_tables; int jfif_header; scalar_t__ jfif; TYPE_2__ current_fragment; } ;
typedef TYPE_1__ VAAPIEncodeMJPEGContext ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ CodedBitstreamFragment ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOSPC ;
 scalar_t__ JPEG_MARKER_APPN ;
 scalar_t__ JPEG_MARKER_DHT ;
 scalar_t__ JPEG_MARKER_DQT ;
 scalar_t__ JPEG_MARKER_SOF0 ;
 scalar_t__ JPEG_MARKER_SOS ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int ff_cbs_fragment_reset (int ,TYPE_2__*) ;
 int ff_cbs_insert_unit_content (int ,TYPE_2__*,int,scalar_t__,int *,int *) ;
 int ff_cbs_write_fragment_data (int ,TYPE_2__*) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static int vaapi_encode_mjpeg_write_image_header(AVCodecContext *avctx,
                                                 VAAPIEncodePicture *pic,
                                                 VAAPIEncodeSlice *slice,
                                                 char *data, size_t *data_len)
{
    VAAPIEncodeMJPEGContext *priv = avctx->priv_data;
    CodedBitstreamFragment *frag = &priv->current_fragment;
    int err;

    if (priv->jfif) {
        err = ff_cbs_insert_unit_content(priv->cbc, frag, -1,
                                         JPEG_MARKER_APPN + 0,
                                         &priv->jfif_header, ((void*)0));
        if (err < 0)
            goto fail;
    }

    err = ff_cbs_insert_unit_content(priv->cbc, frag, -1,
                                     JPEG_MARKER_DQT,
                                     &priv->quant_tables, ((void*)0));
    if (err < 0)
        goto fail;

    err = ff_cbs_insert_unit_content(priv->cbc, frag, -1,
                                     JPEG_MARKER_SOF0,
                                     &priv->frame_header, ((void*)0));
    if (err < 0)
        goto fail;

    if (priv->huffman) {
        err = ff_cbs_insert_unit_content(priv->cbc, frag, -1,
                                         JPEG_MARKER_DHT,
                                         &priv->huffman_tables, ((void*)0));
        if (err < 0)
            goto fail;
    }

    err = ff_cbs_insert_unit_content(priv->cbc, frag, -1,
                                     JPEG_MARKER_SOS,
                                     &priv->scan, ((void*)0));
    if (err < 0)
        goto fail;

    err = ff_cbs_write_fragment_data(priv->cbc, frag);
    if (err < 0) {
        av_log(avctx, AV_LOG_ERROR, "Failed to write image header.\n");
        goto fail;
    }

    if (*data_len < 8 * frag->data_size) {
        av_log(avctx, AV_LOG_ERROR, "Image header too large: "
               "%zu < %zu.\n", *data_len, 8 * frag->data_size);
        err = AVERROR(ENOSPC);
        goto fail;
    }


    memcpy(data, frag->data, frag->data_size - 2);
    *data_len = 8 * (frag->data_size - 2);

    err = 0;
fail:
    ff_cbs_fragment_reset(priv->cbc, frag);
    return err;
}
