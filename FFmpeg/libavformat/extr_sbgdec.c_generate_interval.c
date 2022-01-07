
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ws_intervals {int dummy; } ;
struct TYPE_2__ {int l; int r; } ;
struct sbg_script_synth {scalar_t__ vol; int type; int beat; TYPE_1__ ref; int carrier; } ;
struct sbg_script {int dummy; } ;
typedef scalar_t__ int64_t ;


 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;






 int WS_NOISE ;
 int WS_SINE ;
 int add_bell (struct ws_intervals*,struct sbg_script*,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int add_interval (struct ws_intervals*,int ,int,int,scalar_t__,int ,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int av_log (void*,int ,char*,...) ;

__attribute__((used)) static int generate_interval(void *log, struct sbg_script *s,
                             struct ws_intervals *inter,
                             int64_t ts1, int64_t ts2,
                             struct sbg_script_synth *s1,
                             struct sbg_script_synth *s2,
                             int transition)
{
    int r;

    if (ts2 <= ts1 || (s1->vol == 0 && s2->vol == 0))
        return 0;
    switch (s1->type) {
        case 130:
            break;
        case 129:
            if (s1->beat == 0 && s2->beat == 0) {
                r = add_interval(inter, WS_SINE, 3, s1->ref.l,
                                 ts1, s1->carrier, s1->vol,
                                 ts2, s2->carrier, s2->vol);
                if (r < 0)
                    return r;
                s2->ref.l = s2->ref.r = r;
            } else {
                r = add_interval(inter, WS_SINE, 1, s1->ref.l,
                                 ts1, s1->carrier + s1->beat / 2, s1->vol,
                                 ts2, s2->carrier + s2->beat / 2, s2->vol);
                if (r < 0)
                    return r;
                s2->ref.l = r;
                r = add_interval(inter, WS_SINE, 2, s1->ref.r,
                                 ts1, s1->carrier - s1->beat / 2, s1->vol,
                                 ts2, s2->carrier - s2->beat / 2, s2->vol);
                if (r < 0)
                    return r;
                s2->ref.r = r;
            }
            break;

        case 133:
            if (transition == 2) {
                r = add_bell(inter, s, ts1, ts2, s1->carrier, s2->vol);
                if (r < 0)
                    return r;
            }
            break;

        case 128:
            av_log(log, AV_LOG_WARNING, "Spinning noise not implemented, "
                                        "using pink noise instead.\n");

        case 131:
            r = add_interval(inter, WS_NOISE, 3, s1->ref.l,
                             ts1, 0, s1->vol - s1->vol / 4,
                             ts2, 0, s2->vol - s2->vol / 4);
            if (r < 0)
                return r;
            s2->ref.l = s2->ref.r = r;
            break;

        case 132:

        default:
            av_log(log, AV_LOG_ERROR,
                   "Type %d is not implemented\n", s1->type);
            return AVERROR_PATCHWELCOME;
    }
    return 0;
}
