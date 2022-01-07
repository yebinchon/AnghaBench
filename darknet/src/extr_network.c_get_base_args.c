
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hue; int saturation; int center; int exposure; int aspect; int angle; int max_crop; int min_crop; int w; int h; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int hue; int saturation; int center; int exposure; int aspect; int angle; int max; int min; int size; int h; int w; int member_0; } ;
typedef TYPE_2__ load_args ;



load_args get_base_args(network *net)
{
    load_args args = {0};
    args.w = net->w;
    args.h = net->h;
    args.size = net->w;

    args.min = net->min_crop;
    args.max = net->max_crop;
    args.angle = net->angle;
    args.aspect = net->aspect;
    args.exposure = net->exposure;
    args.center = net->center;
    args.saturation = net->saturation;
    args.hue = net->hue;
    return args;
}
