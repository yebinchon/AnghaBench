
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int nb_groups; struct TYPE_10__* groups; int swr_opts; int sws_dict; int resample_opts; int format_opts; int codec_opts; struct TYPE_10__* opts; } ;
struct TYPE_8__ {TYPE_4__* opts; } ;
struct TYPE_7__ {TYPE_4__* opts; } ;
struct TYPE_9__ {int nb_groups; TYPE_2__ global_opts; TYPE_1__ cur_group; TYPE_4__* groups; } ;
typedef TYPE_3__ OptionParseContext ;
typedef TYPE_4__ OptionGroupList ;


 int av_dict_free (int *) ;
 int av_freep (TYPE_4__**) ;
 int uninit_opts () ;

void uninit_parse_context(OptionParseContext *octx)
{
    int i, j;

    for (i = 0; i < octx->nb_groups; i++) {
        OptionGroupList *l = &octx->groups[i];

        for (j = 0; j < l->nb_groups; j++) {
            av_freep(&l->groups[j].opts);
            av_dict_free(&l->groups[j].codec_opts);
            av_dict_free(&l->groups[j].format_opts);
            av_dict_free(&l->groups[j].resample_opts);

            av_dict_free(&l->groups[j].sws_dict);
            av_dict_free(&l->groups[j].swr_opts);
        }
        av_freep(&l->groups);
    }
    av_freep(&octx->groups);

    av_freep(&octx->cur_group.opts);
    av_freep(&octx->global_opts.opts);

    uninit_opts();
}
