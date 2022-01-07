
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_11__ {int num; } ;
struct TYPE_10__ {int height; int pix_fmt; int width; int time_base; } ;
struct TYPE_9__ {scalar_t__ num; scalar_t__ den; } ;
typedef TYPE_1__ AVRational ;
typedef TYPE_2__ AVDVProfile ;


 int FF_ARRAY_ELEMS (TYPE_2__ const*) ;
 TYPE_6__ av_div_q (int ,TYPE_1__) ;
 TYPE_2__ const* dv_profiles ;

const AVDVProfile *av_dv_codec_profile2(int width, int height,
                                       enum AVPixelFormat pix_fmt,
                                       AVRational frame_rate)
{
    const AVDVProfile *p = ((void*)0);
    return p;
}
