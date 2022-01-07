
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int config_props; int type; int member_0; } ;
typedef TYPE_1__ AVFilterPad ;
typedef int AVFilterContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_DEBUG ;
 int ENOMEM ;
 int av_asprintf (char*,char const*,int) ;
 int av_freep (int *) ;
 int av_log (int *,int ,char*,char const*,int ) ;
 int config_output ;
 int ff_insert_inpad (int *,int,TYPE_1__*) ;
 int ff_insert_outpad (int *,int,TYPE_1__*) ;

__attribute__((used)) static int parse_definition(AVFilterContext *ctx, int nb_pads, int is_input, int is_audio)
{
    const char *padtype = is_input ? "in" : "out";
    int i = 0, ret = 0;

    for (i = 0; i < nb_pads; i++) {
        AVFilterPad pad = { 0 };

        pad.type = is_audio ? AVMEDIA_TYPE_AUDIO : AVMEDIA_TYPE_VIDEO;

        pad.name = av_asprintf("%sput%d", padtype, i);
        if (!pad.name)
            return AVERROR(ENOMEM);

        av_log(ctx, AV_LOG_DEBUG, "Add %s pad %s\n", padtype, pad.name);

        if (is_input) {
            ret = ff_insert_inpad(ctx, i, &pad);
        } else {
            pad.config_props = config_output;
            ret = ff_insert_outpad(ctx, i, &pad);
        }

        if (ret < 0) {
            av_freep(&pad.name);
            return ret;
        }
    }

    return 0;
}
