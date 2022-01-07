
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int ctx; } ;
typedef TYPE_1__ ShowCQTContext ;
typedef scalar_t__ FcResult ;
typedef int FcPattern ;
typedef int FcConfig ;
typedef int FcChar8 ;
typedef int AVFrame ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int ENOMEM ;
 int FC_FILE ;
 int FcConfigDestroy (int *) ;
 int FcConfigSubstitute (int *,int *,int ) ;
 int FcDefaultSubstitute (int *) ;
 int * FcFontMatch (int *,int *,scalar_t__*) ;
 int * FcInitLoadConfigAndFonts () ;
 int FcMatchPattern ;
 int * FcNameParse (int *) ;
 int FcPatternDestroy (int *) ;
 scalar_t__ FcPatternGetString (int *,int ,int ,int **) ;
 scalar_t__ FcResultMatch ;
 int av_log (int ,int ,char*,...) ;
 int render_freetype (TYPE_1__*,int *,char*) ;

__attribute__((used)) static int render_fontconfig(ShowCQTContext *s, AVFrame *tmp, char* font)
{
    if (font)
        av_log(s->ctx, AV_LOG_WARNING, "fontconfig is not available, ignoring font option.\n");
    return AVERROR(EINVAL);

}
