
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int restart_interval; int avctx; scalar_t__ restart_count; int gb; } ;
typedef TYPE_1__ MJpegDecodeContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int av_log (int ,int ,char*,int) ;
 int get_bits (int *,int) ;

__attribute__((used)) static int mjpeg_decode_dri(MJpegDecodeContext *s)
{
    if (get_bits(&s->gb, 16) != 4)
        return AVERROR_INVALIDDATA;
    s->restart_interval = get_bits(&s->gb, 16);
    s->restart_count = 0;
    av_log(s->avctx, AV_LOG_DEBUG, "restart interval: %d\n",
           s->restart_interval);

    return 0;
}
