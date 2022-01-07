
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ code_counterA; scalar_t__ code_counterB; scalar_t__ count_peak_extend; scalar_t__ count_sustain_expired; scalar_t__ sustain; scalar_t__ code_counterC_unmatched; scalar_t__ code_counterB_checkfails; scalar_t__ code_counterA_almost; int max_gain; int count_transient_filter; } ;
typedef TYPE_1__ hdcd_state ;
typedef int hdcd_pe ;
struct TYPE_6__ {int uses_transient_filter; int cdt_expirations; int _active_count; int errors; int max_gain_adjustment; int peak_extend; int packet_type; int total_packets; } ;
typedef TYPE_2__ hdcd_detection_data ;


 int FFMIN (int ,int ) ;
 int GAINTOFLOAT (int ) ;
 int HDCD_PE_INTERMITTENT ;
 int HDCD_PE_NEVER ;
 int HDCD_PE_PERMANENT ;
 int HDCD_PVER_A ;
 int HDCD_PVER_B ;

__attribute__((used)) static void hdcd_detect_onech(hdcd_state *state, hdcd_detection_data *detect) {
    hdcd_pe pe = HDCD_PE_NEVER;
    detect->uses_transient_filter |= !!(state->count_transient_filter);
    detect->total_packets += state->code_counterA + state->code_counterB;
    if (state->code_counterA) detect->packet_type |= HDCD_PVER_A;
    if (state->code_counterB) detect->packet_type |= HDCD_PVER_B;
    if (state->count_peak_extend) {

        if (state->count_peak_extend == state->code_counterA + state->code_counterB)
            pe = HDCD_PE_PERMANENT;
        else
            pe = HDCD_PE_INTERMITTENT;
        if (detect->peak_extend != HDCD_PE_INTERMITTENT)
            detect->peak_extend = pe;
    }
    detect->max_gain_adjustment = FFMIN(detect->max_gain_adjustment, GAINTOFLOAT(state->max_gain));
    detect->errors += state->code_counterA_almost
        + state->code_counterB_checkfails
        + state->code_counterC_unmatched;
    if (state->sustain) detect->_active_count++;
    if (state->count_sustain_expired >= 0) {
        if (detect->cdt_expirations == -1) detect->cdt_expirations = 0;
        detect->cdt_expirations += state->count_sustain_expired;
    }
}
