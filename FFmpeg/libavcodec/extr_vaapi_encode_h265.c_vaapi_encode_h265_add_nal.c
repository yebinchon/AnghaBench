
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cbc; } ;
typedef TYPE_1__ VAAPIEncodeH265Context ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int nal_unit_type; } ;
typedef TYPE_2__ H265RawNALUnitHeader ;
typedef int CodedBitstreamFragment ;
typedef TYPE_3__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_3__*,int ,char*,int ) ;
 int ff_cbs_insert_unit_content (int ,int *,int,int ,void*,int *) ;

__attribute__((used)) static int vaapi_encode_h265_add_nal(AVCodecContext *avctx,
                                     CodedBitstreamFragment *au,
                                     void *nal_unit)
{
    VAAPIEncodeH265Context *priv = avctx->priv_data;
    H265RawNALUnitHeader *header = nal_unit;
    int err;

    err = ff_cbs_insert_unit_content(priv->cbc, au, -1,
                                     header->nal_unit_type, nal_unit, ((void*)0));
    if (err < 0) {
        av_log(avctx, AV_LOG_ERROR, "Failed to add NAL unit: "
               "type = %d.\n", header->nal_unit_type);
        return err;
    }

    return 0;
}
