
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int quant ;
struct TYPE_9__ {int* quantization_index; scalar_t__* quantization_index_delta; } ;
typedef TYPE_1__ VAQMatrixBufferVP8 ;
struct TYPE_10__ {int q_index_p; int q_index_i; } ;
typedef TYPE_2__ VAAPIEncodeVP8Context ;
struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_3__ VAAPIEncodePicture ;
struct TYPE_12__ {TYPE_2__* priv_data; } ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EINVAL ;
 scalar_t__ PICTURE_TYPE_P ;
 int VAQMatrixBufferType ;
 int memcpy (char*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int vaapi_encode_vp8_write_quant_table(AVCodecContext *avctx,
                                              VAAPIEncodePicture *pic,
                                              int index, int *type,
                                              char *data, size_t *data_len)
{
    VAAPIEncodeVP8Context *priv = avctx->priv_data;
    VAQMatrixBufferVP8 quant;
    int i, q;

    if (index > 0)
        return AVERROR_EOF;

    if (*data_len < sizeof(quant))
        return AVERROR(EINVAL);
    *type = VAQMatrixBufferType;
    *data_len = sizeof(quant);

    memset(&quant, 0, sizeof(quant));

    if (pic->type == PICTURE_TYPE_P)
        q = priv->q_index_p;
    else
        q = priv->q_index_i;

    for (i = 0; i < 4; i++)
        quant.quantization_index[i] = q;
    for (i = 0; i < 5; i++)
        quant.quantization_index_delta[i] = 0;

    memcpy(data, &quant, sizeof(quant));
    return 0;
}
