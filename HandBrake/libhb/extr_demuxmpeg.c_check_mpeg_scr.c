
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int last_scr; scalar_t__ last_pts; int scr_changes; } ;
typedef TYPE_1__ hb_psdemux_t ;


 scalar_t__ AV_NOPTS_VALUE ;

__attribute__((used)) static inline int check_mpeg_scr( hb_psdemux_t *state, int64_t scr, int tol )
{
    int discontinuity = 0;
    int64_t scr_delta = scr - state->last_scr;
    if (state->last_scr == AV_NOPTS_VALUE ||
        scr_delta > 90*tol || scr_delta < -90*10)
    {
        ++state->scr_changes;
        state->last_pts = AV_NOPTS_VALUE;
        discontinuity = 1;
    }
    state->last_scr = scr;
    return discontinuity;
}
