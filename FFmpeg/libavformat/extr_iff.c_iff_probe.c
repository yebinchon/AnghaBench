
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (int const*) ;
 scalar_t__ ID_16SV ;
 scalar_t__ ID_8SVX ;
 scalar_t__ ID_ACBM ;
 scalar_t__ ID_ANIM ;
 scalar_t__ ID_DEEP ;
 scalar_t__ ID_DSD ;
 scalar_t__ ID_FORM ;
 scalar_t__ ID_FRM8 ;
 scalar_t__ ID_ILBM ;
 scalar_t__ ID_MAUD ;
 scalar_t__ ID_PBM ;
 scalar_t__ ID_RGB8 ;
 scalar_t__ ID_RGBN ;

__attribute__((used)) static int iff_probe(const AVProbeData *p)
{
    const uint8_t *d = p->buf;

    if ( (AV_RL32(d) == ID_FORM &&
         (AV_RL32(d+8) == ID_8SVX ||
          AV_RL32(d+8) == ID_16SV ||
          AV_RL32(d+8) == ID_MAUD ||
          AV_RL32(d+8) == ID_PBM ||
          AV_RL32(d+8) == ID_ACBM ||
          AV_RL32(d+8) == ID_DEEP ||
          AV_RL32(d+8) == ID_ILBM ||
          AV_RL32(d+8) == ID_RGB8 ||
          AV_RL32(d+8) == ID_ANIM ||
          AV_RL32(d+8) == ID_RGBN)) ||
         (AV_RL32(d) == ID_FRM8 && AV_RL32(d+12) == ID_DSD))
        return AVPROBE_SCORE_MAX;
    return 0;
}
