
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int extradata_parsed; int new_idr; scalar_t__ idr_pps_seen; scalar_t__ idr_sps_seen; } ;
typedef TYPE_1__ H264BSFContext ;
typedef TYPE_2__ AVBSFContext ;



__attribute__((used)) static void h264_mp4toannexb_flush(AVBSFContext *ctx)
{
    H264BSFContext *s = ctx->priv_data;

    s->idr_sps_seen = 0;
    s->idr_pps_seen = 0;
    s->new_idr = s->extradata_parsed;
}
