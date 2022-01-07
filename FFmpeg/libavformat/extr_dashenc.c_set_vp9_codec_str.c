
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitdepth; int level; int profile; } ;
typedef TYPE_1__ VPCC ;
typedef int AVRational ;
typedef int AVFormatContext ;
typedef int AVCodecParameters ;


 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*) ;
 int av_strlcatf (char*,int,char*,int ,int ,int ) ;
 int av_strlcpy (char*,char*,int) ;
 int ff_isom_get_vpcc_features (int *,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void set_vp9_codec_str(AVFormatContext *s, AVCodecParameters *par,
                              AVRational *frame_rate, char *str, int size) {
    VPCC vpcc;
    int ret = ff_isom_get_vpcc_features(s, par, frame_rate, &vpcc);
    if (ret == 0) {
        av_strlcatf(str, size, "vp09.%02d.%02d.%02d",
                    vpcc.profile, vpcc.level, vpcc.bitdepth);
    } else {

        av_log(s, AV_LOG_WARNING, "Could not find VP9 profile and/or level\n");
        av_strlcpy(str, "vp9", size);
    }
    return;
}
