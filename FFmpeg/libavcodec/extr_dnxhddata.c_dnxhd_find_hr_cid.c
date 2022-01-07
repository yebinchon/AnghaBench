
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int profile; } ;
typedef TYPE_1__ AVCodecContext ;
__attribute__((used)) static int dnxhd_find_hr_cid(AVCodecContext *avctx)
{
    switch (avctx->profile) {
    case 132:
        return 1270;
    case 130:
        return 1271;
    case 131:
        return 1272;
    case 128:
        return 1273;
    case 129:
        return 1274;
    }
    return 0;
}
