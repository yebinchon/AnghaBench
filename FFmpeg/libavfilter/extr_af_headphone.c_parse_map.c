
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int lfe_channel; int nb_inputs; int* mapping; size_t nb_irs; scalar_t__ hrir_fmt; int map; } ;
typedef TYPE_1__ HeadphoneContext ;
typedef TYPE_2__ AVFilterContext ;


 int AV_LOG_WARNING ;
 scalar_t__ HRIR_MULTI ;
 int av_free (char*) ;
 int av_log (TYPE_2__*,int ,char*,char*) ;
 char* av_strdup (int ) ;
 char* av_strtok (char*,char*,char**) ;
 scalar_t__ parse_channel_name (TYPE_1__*,size_t,char**,int*,char*) ;

__attribute__((used)) static void parse_map(AVFilterContext *ctx)
{
    HeadphoneContext *s = ctx->priv;
    char *arg, *tokenizer, *p, *args = av_strdup(s->map);
    int i;

    if (!args)
        return;
    p = args;

    s->lfe_channel = -1;
    s->nb_inputs = 1;

    for (i = 0; i < 64; i++) {
        s->mapping[i] = -1;
    }

    while ((arg = av_strtok(p, "|", &tokenizer))) {
        int out_ch_id;
        char buf[8];

        p = ((void*)0);
        if (parse_channel_name(s, s->nb_irs, &arg, &out_ch_id, buf)) {
            av_log(ctx, AV_LOG_WARNING, "Failed to parse \'%s\' as channel name.\n", buf);
            continue;
        }
        s->mapping[s->nb_irs] = out_ch_id;
        s->nb_irs++;
    }

    if (s->hrir_fmt == HRIR_MULTI)
        s->nb_inputs = 2;
    else
        s->nb_inputs = s->nb_irs + 1;

    av_free(args);
}
