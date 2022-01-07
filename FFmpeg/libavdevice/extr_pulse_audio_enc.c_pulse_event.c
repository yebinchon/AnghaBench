
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pa_subscription_event_type_t ;
typedef int pa_context ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int * ctx; } ;
typedef TYPE_1__ PulseData ;
typedef TYPE_2__ AVFormatContext ;


 int PA_SUBSCRIPTION_EVENT_CHANGE ;
 int PA_SUBSCRIPTION_EVENT_FACILITY_MASK ;
 int PA_SUBSCRIPTION_EVENT_SINK_INPUT ;
 int PA_SUBSCRIPTION_EVENT_TYPE_MASK ;
 int pulse_update_sink_input_info (TYPE_2__*) ;

__attribute__((used)) static void pulse_event(pa_context *ctx, pa_subscription_event_type_t t,
                        uint32_t idx, void *userdata)
{
    AVFormatContext *h = userdata;
    PulseData *s = h->priv_data;

    if (s->ctx != ctx)
        return;

    if ((t & PA_SUBSCRIPTION_EVENT_FACILITY_MASK) == PA_SUBSCRIPTION_EVENT_SINK_INPUT) {
        if ((t & PA_SUBSCRIPTION_EVENT_TYPE_MASK) == PA_SUBSCRIPTION_EVENT_CHANGE)

            pulse_update_sink_input_info(h);
    }
}
