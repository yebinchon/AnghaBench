
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_mainloop ;
typedef int pa_context ;


 int av_assert0 (int **) ;
 int pa_context_disconnect (int *) ;
 int pa_context_set_state_callback (int *,int *,int *) ;
 int pa_context_unref (int *) ;
 int pa_mainloop_free (int *) ;

void ff_pulse_audio_disconnect_context(pa_mainloop **pa_ml, pa_context **pa_ctx)
{
    av_assert0(pa_ml);
    av_assert0(pa_ctx);

    if (*pa_ctx) {
        pa_context_set_state_callback(*pa_ctx, ((void*)0), ((void*)0));
        pa_context_disconnect(*pa_ctx);
        pa_context_unref(*pa_ctx);
    }
    if (*pa_ml)
        pa_mainloop_free(*pa_ml);
    *pa_ml = ((void*)0);
    *pa_ctx = ((void*)0);
}
