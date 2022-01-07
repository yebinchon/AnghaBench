
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flags; int help; } ;
struct TYPE_8__ {int val; int key; TYPE_4__* opt; } ;
struct TYPE_7__ {int nb_opts; int arg; TYPE_1__* group_def; TYPE_3__* opts; } ;
struct TYPE_6__ {int flags; int name; } ;
typedef TYPE_2__ OptionGroup ;
typedef TYPE_3__ Option ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (int *,int ,char*,...) ;
 int write_option (void*,TYPE_4__*,int ,int ) ;

int parse_optgroup(void *optctx, OptionGroup *g)
{
    int i, ret;

    av_log(((void*)0), AV_LOG_DEBUG, "Parsing a group of options: %s %s.\n",
           g->group_def->name, g->arg);

    for (i = 0; i < g->nb_opts; i++) {
        Option *o = &g->opts[i];

        if (g->group_def->flags &&
            !(g->group_def->flags & o->opt->flags)) {
            av_log(((void*)0), AV_LOG_ERROR, "Option %s (%s) cannot be applied to "
                   "%s %s -- you are trying to apply an input option to an "
                   "output file or vice versa. Move this option before the "
                   "file it belongs to.\n", o->key, o->opt->help,
                   g->group_def->name, g->arg);
            return AVERROR(EINVAL);
        }

        av_log(((void*)0), AV_LOG_DEBUG, "Applying option %s (%s) with argument %s.\n",
               o->key, o->opt->help, o->val);

        ret = write_option(optctx, o->opt, o->key, o->val);
        if (ret < 0)
            return ret;
    }

    av_log(((void*)0), AV_LOG_DEBUG, "Successfully parsed a group of options.\n");

    return 0;
}
