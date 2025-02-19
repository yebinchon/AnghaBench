
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ den; scalar_t__ num; } ;
typedef TYPE_1__ AVRational ;


 int AVERROR (int ) ;
 int AV_ROUND_ZERO ;
 int EINVAL ;
 scalar_t__ av_rescale_rnd (unsigned int,scalar_t__,scalar_t__,int ) ;

int av_image_check_sar(unsigned int w, unsigned int h, AVRational sar)
{
    int64_t scaled_dim;

    if (sar.den <= 0 || sar.num < 0)
        return AVERROR(EINVAL);

    if (!sar.num || sar.num == sar.den)
        return 0;

    if (sar.num < sar.den)
        scaled_dim = av_rescale_rnd(w, sar.num, sar.den, AV_ROUND_ZERO);
    else
        scaled_dim = av_rescale_rnd(h, sar.den, sar.num, AV_ROUND_ZERO);

    if (scaled_dim > 0)
        return 0;

    return AVERROR(EINVAL);
}
