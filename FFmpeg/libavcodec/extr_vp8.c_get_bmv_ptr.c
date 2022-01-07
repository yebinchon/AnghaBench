
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; size_t partitioning; int const* bmv; } ;
typedef TYPE_1__ VP8Macroblock ;
typedef int VP56mv ;


 scalar_t__ VP8_MVMODE_SPLIT ;
 size_t** vp8_mbsplits ;

__attribute__((used)) static const VP56mv *get_bmv_ptr(const VP8Macroblock *mb, int subblock)
{
    return &mb->bmv[mb->mode == VP8_MVMODE_SPLIT ? vp8_mbsplits[mb->partitioning][subblock] : 0];
}
