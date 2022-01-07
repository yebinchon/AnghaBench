
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cbc; } ;
typedef TYPE_1__ VAAPIEncodeMPEG2Context ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
typedef int CodedBitstreamFragment ;
typedef TYPE_2__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 int ff_cbs_insert_unit_content (int ,int *,int,int,void*,int *) ;

__attribute__((used)) static int vaapi_encode_mpeg2_add_header(AVCodecContext *avctx,
                                         CodedBitstreamFragment *frag,
                                         int type, void *header)
{
    VAAPIEncodeMPEG2Context *priv = avctx->priv_data;
    int err;

    err = ff_cbs_insert_unit_content(priv->cbc, frag, -1, type, header, ((void*)0));
    if (err < 0) {
        av_log(avctx, AV_LOG_ERROR, "Failed to add header: "
               "type = %d.\n", type);
        return err;
    }

    return 0;
}
