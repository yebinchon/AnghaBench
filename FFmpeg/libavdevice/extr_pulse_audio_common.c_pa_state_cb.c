
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_context ;
typedef enum PulseAudioContextState { ____Placeholder_PulseAudioContextState } PulseAudioContextState ;





 int PULSE_CONTEXT_FINISHED ;
 int PULSE_CONTEXT_READY ;
 int pa_context_get_state (int *) ;

__attribute__((used)) static void pa_state_cb(pa_context *c, void *userdata)
{
    enum PulseAudioContextState *context_state = userdata;

    switch (pa_context_get_state(c)) {
    case 130:
    case 128:
        *context_state = PULSE_CONTEXT_FINISHED;
        break;
    case 129:
        *context_state = PULSE_CONTEXT_READY;
        break;
    default:
        break;
    }
}
