
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int temporal_id; int gb; } ;
typedef TYPE_1__ H2645NAL ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int av_log (void*,int ,char*,int,int ,int,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int hevc_nal_unit_name (int) ;

__attribute__((used)) static int hevc_parse_nal_header(H2645NAL *nal, void *logctx)
{
    GetBitContext *gb = &nal->gb;
    int nuh_layer_id;

    if (get_bits1(gb) != 0)
        return AVERROR_INVALIDDATA;

    nal->type = get_bits(gb, 6);

    nuh_layer_id = get_bits(gb, 6);
    nal->temporal_id = get_bits(gb, 3) - 1;
    if (nal->temporal_id < 0)
        return AVERROR_INVALIDDATA;

    av_log(logctx, AV_LOG_DEBUG,
           "nal_unit_type: %d(%s), nuh_layer_id: %d, temporal_id: %d\n",
           nal->type, hevc_nal_unit_name(nal->type), nuh_layer_id, nal->temporal_id);

    return nuh_layer_id == 0;
}
