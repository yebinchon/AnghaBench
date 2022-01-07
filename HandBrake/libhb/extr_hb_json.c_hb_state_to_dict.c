
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int text; } ;
typedef TYPE_5__ json_error_t ;
struct TYPE_11__ {int progress; } ;
struct TYPE_10__ {int error; int seconds; int paused; int minutes; int hours; int eta_seconds; int rate_avg; int rate_cur; int pass_count; int pass; int pass_id; int progress; } ;
struct TYPE_9__ {int title_count; int title_cur; int preview_count; int preview_cur; int progress; } ;
struct TYPE_12__ {TYPE_3__ muxing; TYPE_2__ working; TYPE_1__ scanning; } ;
struct TYPE_14__ {int state; TYPE_4__ param; int sequence_id; } ;
typedef TYPE_6__ hb_state_t ;
typedef int hb_dict_t ;
 int hb_error (char*,int) ;
 int hb_value_double (int ) ;
 int hb_value_int (int ) ;
 int hb_value_string (char const*) ;
 int * json_pack_ex (TYPE_5__*,int ,char*,char*,int ,...) ;

hb_dict_t* hb_state_to_dict( hb_state_t * state)
{
    const char * state_s;
    hb_dict_t *dict = ((void*)0);
    json_error_t error;

    switch (state->state)
    {
    case 135:
        state_s = "IDLE";
        break;
    case 131:
        state_s = "SCANNING";
        break;
    case 132:
        state_s = "SCANDONE";
        break;
    case 128:
        state_s = "WORKING";
        break;
    case 133:
        state_s = "PAUSED";
        break;
    case 130:
        state_s = "SEARCHING";
        break;
    case 129:
        state_s = "WORKDONE";
        break;
    case 134:
        state_s = "MUXING";
        break;
    default:
        state_s = "UNKNOWN";
        break;
    }

    switch (state->state)
    {
    case 135:
        dict = json_pack_ex(&error, 0, "{s:o}",
                    "State", hb_value_string(state_s));
        break;
    case 131:
    case 132:
        dict = json_pack_ex(&error, 0,
            "{s:o, s{s:o, s:o, s:o, s:o, s:o, s:o}}",
            "State", hb_value_string(state_s),
            "Scanning",
                "SequenceID", hb_value_int(state->sequence_id),
                "Progress", hb_value_double(state->param.scanning.progress),
                "Preview", hb_value_int(state->param.scanning.preview_cur),
                "PreviewCount", hb_value_int(state->param.scanning.preview_count),
                "Title", hb_value_int(state->param.scanning.title_cur),
                "TitleCount", hb_value_int(state->param.scanning.title_count));
        break;
    case 128:
    case 133:
    case 130:
        dict = json_pack_ex(&error, 0,
            "{s:o, s{s:o, s:o, s:o, s:o, s:o, s:o,"
                   " s:o, s:o, s:o, s:o, s:o, s:o}}",
            "State", hb_value_string(state_s),
            "Working",
                "Progress", hb_value_double(state->param.working.progress),
                "PassID", hb_value_int(state->param.working.pass_id),
                "Pass", hb_value_int(state->param.working.pass),
                "PassCount", hb_value_int(state->param.working.pass_count),
                "Rate", hb_value_double(state->param.working.rate_cur),
                "RateAvg", hb_value_double(state->param.working.rate_avg),
                "ETASeconds", hb_value_int(state->param.working.eta_seconds),
                "Hours", hb_value_int(state->param.working.hours),
                "Minutes", hb_value_int(state->param.working.minutes),
                "Paused", hb_value_int(state->param.working.paused),
                "Seconds", hb_value_int(state->param.working.seconds),
                "SequenceID", hb_value_int(state->sequence_id));
        break;
    case 129:
        dict = json_pack_ex(&error, 0,
            "{s:o, s{s:o, s:o}}",
            "State", hb_value_string(state_s),
            "WorkDone",
                "SequenceID", hb_value_int(state->sequence_id),
                "Error", hb_value_int(state->param.working.error));
        break;
    case 134:
        dict = json_pack_ex(&error, 0,
            "{s:o, s{s:o}}",
            "State", hb_value_string(state_s),
            "Muxing",
                "Progress", hb_value_double(state->param.muxing.progress));
        break;
    default:
        dict = json_pack_ex(&error, 0, "{s:o}",
                    "State", hb_value_string(state_s));
        hb_error("hb_state_to_dict: unrecognized state %d", state->state);
        break;
    }
    if (dict == ((void*)0))
    {
        hb_error("json pack failure: %s", error.text);
    }
    return dict;
}
