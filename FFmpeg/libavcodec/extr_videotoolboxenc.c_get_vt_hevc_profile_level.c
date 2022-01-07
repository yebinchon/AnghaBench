
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int profile; } ;
typedef TYPE_1__ VTEncContext ;
struct TYPE_8__ {int * kVTProfileLevel_HEVC_Main10_AutoLevel; int * kVTProfileLevel_HEVC_Main_AutoLevel; } ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef int * CFStringRef ;
typedef TYPE_2__ AVCodecContext ;


 int AV_LOG_ERROR ;



 int av_log (TYPE_2__*,int ,char*) ;
 TYPE_4__ compat_keys ;

__attribute__((used)) static bool get_vt_hevc_profile_level(AVCodecContext *avctx,
                                      CFStringRef *profile_level_val)
{
    VTEncContext *vtctx = avctx->priv_data;
    int64_t profile = vtctx->profile;

    *profile_level_val = ((void*)0);

    switch (profile) {
        case 130:
            return 1;
        case 129:
            *profile_level_val =
                compat_keys.kVTProfileLevel_HEVC_Main_AutoLevel;
            break;
        case 128:
            *profile_level_val =
                compat_keys.kVTProfileLevel_HEVC_Main10_AutoLevel;
            break;
    }

    if (!*profile_level_val) {
        av_log(avctx, AV_LOG_ERROR, "Invalid Profile/Level.\n");
        return 0;
    }

    return 1;
}
