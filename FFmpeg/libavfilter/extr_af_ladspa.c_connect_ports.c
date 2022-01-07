
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int (* activate ) (int ) ;int (* connect_port ) (int ,int ,int *) ;int (* instantiate ) (TYPE_4__*,int ) ;} ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int channels; int sample_rate; } ;
struct TYPE_8__ {int nb_handles; int nb_inputs; int nb_outputs; int nb_inputcontrols; int nb_outputcontrols; int * handles; TYPE_4__* desc; int * octlv; int * ocmap; int * ictlv; int * icmap; } ;
typedef TYPE_1__ LADSPAContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int * av_calloc (int,int) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int stub1 (TYPE_4__*,int ) ;
 int stub2 (int ,int ,int *) ;
 int stub3 (int ,int ,int *) ;
 int stub4 (int ) ;

__attribute__((used)) static int connect_ports(AVFilterContext *ctx, AVFilterLink *link)
{
    LADSPAContext *s = ctx->priv;
    int i, j;

    s->nb_handles = s->nb_inputs == 1 && s->nb_outputs == 1 ? link->channels : 1;
    s->handles = av_calloc(s->nb_handles, sizeof(*s->handles));
    if (!s->handles)
        return AVERROR(ENOMEM);

    for (i = 0; i < s->nb_handles; i++) {
        s->handles[i] = s->desc->instantiate(s->desc, link->sample_rate);
        if (!s->handles[i]) {
            av_log(ctx, AV_LOG_ERROR, "Could not instantiate plugin.\n");
            return AVERROR_EXTERNAL;
        }


        for (j = 0; j < s->nb_inputcontrols; j++)
            s->desc->connect_port(s->handles[i], s->icmap[j], s->ictlv + j);


        for (j = 0; j < s->nb_outputcontrols; j++)
            s->desc->connect_port(s->handles[i], s->ocmap[j], &s->octlv[j]);

        if (s->desc->activate)
            s->desc->activate(s->handles[i]);
    }

    av_log(ctx, AV_LOG_DEBUG, "handles: %d\n", s->nb_handles);

    return 0;
}
