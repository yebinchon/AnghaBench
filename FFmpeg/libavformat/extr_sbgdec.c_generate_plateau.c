
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ws_intervals {int dummy; } ;
struct sbg_script_synth {int dummy; } ;
struct sbg_script_event {int nb_elements; int elements; int ts_trans; int ts_int; } ;
struct sbg_script {struct sbg_script_synth* synth; } ;
typedef int int64_t ;


 int generate_interval (void*,struct sbg_script*,struct ws_intervals*,int ,int ,struct sbg_script_synth*,struct sbg_script_synth*,int ) ;

__attribute__((used)) static int generate_plateau(void *log, struct sbg_script *s,
                            struct ws_intervals *inter,
                            struct sbg_script_event *ev1)
{
    int64_t ts1 = ev1->ts_int, ts2 = ev1->ts_trans;
    int i, r;
    struct sbg_script_synth *s1;

    for (i = 0; i < ev1->nb_elements; i++) {
        s1 = &s->synth[ev1->elements + i];
        r = generate_interval(log, s, inter, ts1, ts2, s1, s1, 0);
        if (r < 0)
            return r;
    }
    return 0;
}
