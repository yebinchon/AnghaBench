
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ref_idc; void* type; int gb; } ;
typedef TYPE_1__ H2645NAL ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int av_log (void*,int ,char*,void*,int ,void*) ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int h264_nal_unit_name (void*) ;

__attribute__((used)) static int h264_parse_nal_header(H2645NAL *nal, void *logctx)
{
    GetBitContext *gb = &nal->gb;

    if (get_bits1(gb) != 0)
        return AVERROR_INVALIDDATA;

    nal->ref_idc = get_bits(gb, 2);
    nal->type = get_bits(gb, 5);

    av_log(logctx, AV_LOG_DEBUG,
           "nal_unit_type: %d(%s), nal_ref_idc: %d\n",
           nal->type, h264_nal_unit_name(nal->type), nal->ref_idc);

    return 1;
}
