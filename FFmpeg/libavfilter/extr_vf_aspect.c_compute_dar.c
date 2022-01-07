
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; int den; } ;
typedef TYPE_1__ AVRational ;


 int INT_MAX ;
 int av_reduce (int*,int*,int,int,int ) ;

__attribute__((used)) static inline void compute_dar(AVRational *dar, AVRational sar, int w, int h)
{
    if (sar.num && sar.den) {
        av_reduce(&dar->num, &dar->den, sar.num * w, sar.den * h, INT_MAX);
    } else {
        av_reduce(&dar->num, &dar->den, w, h, INT_MAX);
    }
}
