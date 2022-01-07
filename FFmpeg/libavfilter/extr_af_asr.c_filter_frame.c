
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_11__ {int utt_started; int ps; } ;
struct TYPE_10__ {int * outputs; TYPE_4__* priv; } ;
struct TYPE_9__ {TYPE_3__* dst; } ;
struct TYPE_8__ {int nb_samples; scalar_t__* data; int * metadata; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVDictionary ;
typedef TYPE_4__ ASRContext ;


 int av_dict_set (int **,char*,char const*,int ) ;
 int ff_filter_frame (int ,TYPE_1__*) ;
 int ps_end_utt (int ) ;
 char* ps_get_hyp (int ,int *) ;
 int ps_get_in_speech (int ) ;
 int ps_process_raw (int ,int const*,int ,int ,int ) ;
 int ps_start_utt (int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVDictionary **metadata = &in->metadata;
    ASRContext *s = ctx->priv;
    int have_speech;
    const char *speech;

    ps_process_raw(s->ps, (const int16_t *)in->data[0], in->nb_samples, 0, 0);
    have_speech = ps_get_in_speech(s->ps);
    if (have_speech && !s->utt_started)
        s->utt_started = 1;
    if (!have_speech && s->utt_started) {
        ps_end_utt(s->ps);
        speech = ps_get_hyp(s->ps, ((void*)0));
        if (speech != ((void*)0))
            av_dict_set(metadata, "lavfi.asr.text", speech, 0);
        ps_start_utt(s->ps);
        s->utt_started = 0;
    }

    return ff_filter_frame(ctx->outputs[0], in);
}
