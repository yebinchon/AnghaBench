
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_mainloop_api ;
typedef int pa_mainloop ;
typedef int pa_context ;
typedef enum PulseAudioContextState { ____Placeholder_PulseAudioContextState } PulseAudioContextState ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int ENOMEM ;
 int PULSE_CONTEXT_FINISHED ;
 int PULSE_CONTEXT_INITIALIZING ;
 int av_assert0 (int **) ;
 int ff_pulse_audio_disconnect_context (int **,int **) ;
 scalar_t__ pa_context_connect (int *,char const*,int ,int *) ;
 int * pa_context_new (int *,char const*) ;
 int pa_context_set_state_callback (int *,int ,int*) ;
 int * pa_mainloop_get_api (int *) ;
 int pa_mainloop_iterate (int *,int,int *) ;
 int * pa_mainloop_new () ;
 int pa_state_cb ;

int ff_pulse_audio_connect_context(pa_mainloop **pa_ml, pa_context **pa_ctx,
                                   const char *server, const char *description)
{
    int ret;
    pa_mainloop_api *pa_mlapi = ((void*)0);
    enum PulseAudioContextState context_state = PULSE_CONTEXT_INITIALIZING;

    av_assert0(pa_ml);
    av_assert0(pa_ctx);

    *pa_ml = ((void*)0);
    *pa_ctx = ((void*)0);

    if (!(*pa_ml = pa_mainloop_new()))
        return AVERROR(ENOMEM);
    if (!(pa_mlapi = pa_mainloop_get_api(*pa_ml))) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }
    if (!(*pa_ctx = pa_context_new(pa_mlapi, description))) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    pa_context_set_state_callback(*pa_ctx, pa_state_cb, &context_state);
    if (pa_context_connect(*pa_ctx, server, 0, ((void*)0)) < 0) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    while (context_state == PULSE_CONTEXT_INITIALIZING)
        pa_mainloop_iterate(*pa_ml, 1, ((void*)0));
    if (context_state == PULSE_CONTEXT_FINISHED) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }
    return 0;

  fail:
    ff_pulse_audio_disconnect_context(pa_ml, pa_ctx);
    return ret;
}
