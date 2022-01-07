
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char const* arg; int * resample_opts; int * format_opts; int * codec_opts; int * swr_opts; int * sws_dict; int group_def; } ;
struct TYPE_8__ {int nb_groups; int group_def; TYPE_3__* groups; } ;
struct TYPE_7__ {TYPE_3__ cur_group; TYPE_2__* groups; } ;
typedef TYPE_1__ OptionParseContext ;
typedef TYPE_2__ OptionGroupList ;
typedef TYPE_3__ OptionGroup ;


 int GROW_ARRAY (TYPE_3__*,int) ;
 int * codec_opts ;
 int * format_opts ;
 int init_opts () ;
 int memset (TYPE_3__*,int ,int) ;
 int * resample_opts ;
 int * swr_opts ;
 int * sws_dict ;

__attribute__((used)) static void finish_group(OptionParseContext *octx, int group_idx,
                         const char *arg)
{
    OptionGroupList *l = &octx->groups[group_idx];
    OptionGroup *g;

    GROW_ARRAY(l->groups, l->nb_groups);
    g = &l->groups[l->nb_groups - 1];

    *g = octx->cur_group;
    g->arg = arg;
    g->group_def = l->group_def;
    g->sws_dict = sws_dict;
    g->swr_opts = swr_opts;
    g->codec_opts = codec_opts;
    g->format_opts = format_opts;
    g->resample_opts = resample_opts;

    codec_opts = ((void*)0);
    format_opts = ((void*)0);
    resample_opts = ((void*)0);
    sws_dict = ((void*)0);
    swr_opts = ((void*)0);
    init_opts();

    memset(&octx->cur_group, 0, sizeof(octx->cur_group));
}
