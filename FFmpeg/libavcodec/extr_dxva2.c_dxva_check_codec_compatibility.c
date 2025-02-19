
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ codec; scalar_t__* profiles; } ;
typedef TYPE_1__ dxva_mode ;
struct TYPE_6__ {scalar_t__ codec_id; int hwaccel_flags; scalar_t__ profile; } ;
typedef TYPE_2__ AVCodecContext ;


 int AV_HWACCEL_FLAG_ALLOW_PROFILE_MISMATCH ;
 scalar_t__ FF_PROFILE_UNKNOWN ;

__attribute__((used)) static int dxva_check_codec_compatibility(AVCodecContext *avctx, const dxva_mode *mode)
{
    if (mode->codec != avctx->codec_id)
            return 0;

    if (mode->profiles && !(avctx->hwaccel_flags & AV_HWACCEL_FLAG_ALLOW_PROFILE_MISMATCH)) {
        int i, found = 0;
        for (i = 0; mode->profiles[i] != FF_PROFILE_UNKNOWN; i++) {
            if (avctx->profile == mode->profiles[i]) {
                found = 1;
                break;
            }
        }
        if (!found)
            return 0;
    }

    return 1;
}
