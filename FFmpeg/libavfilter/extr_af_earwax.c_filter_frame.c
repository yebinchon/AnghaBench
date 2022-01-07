
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_17__ {TYPE_1__* dst; } ;
struct TYPE_16__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_15__ {int * taps; } ;
struct TYPE_14__ {scalar_t__ priv; TYPE_4__** outputs; } ;
typedef TYPE_2__ EarwaxContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int,int) ;
 int NUMTAPS ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_audio_buffer (TYPE_4__*,int) ;
 int memcpy (int *,int *,int) ;
 int memmove (int *,int *,int) ;
 int * scalarproduct (int *,int *,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *insamples)
{
    AVFilterLink *outlink = inlink->dst->outputs[0];
    int16_t *taps, *endin, *in, *out;
    AVFrame *outsamples = ff_get_audio_buffer(outlink, insamples->nb_samples);
    int len;

    if (!outsamples) {
        av_frame_free(&insamples);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(outsamples, insamples);

    taps = ((EarwaxContext *)inlink->dst->priv)->taps;
    out = (int16_t *)outsamples->data[0];
    in = (int16_t *)insamples ->data[0];

    len = FFMIN(NUMTAPS, 2*insamples->nb_samples);

    memcpy(taps+NUMTAPS, in, len * sizeof(*taps));
    out = scalarproduct(taps, taps + len, out);


    if (2*insamples->nb_samples >= NUMTAPS ){
        endin = in + insamples->nb_samples * 2 - NUMTAPS;
        scalarproduct(in, endin, out);


        memcpy(taps, endin, NUMTAPS * sizeof(*taps));
    } else
        memmove(taps, taps + 2*insamples->nb_samples, NUMTAPS * sizeof(*taps));

    av_frame_free(&insamples);
    return ff_filter_frame(outlink, outsamples);
}
