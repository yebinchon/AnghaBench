
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* predictor_reset_count; } ;
typedef TYPE_1__ IndividualChannelStream ;


 scalar_t__ PRED_RESET_FRAME_MIN ;

__attribute__((used)) static inline int update_counters(IndividualChannelStream *ics, int inc)
{
    int i;
    for (i = 1; i < 31; i++) {
        ics->predictor_reset_count[i] += inc;
        if (ics->predictor_reset_count[i] > PRED_RESET_FRAME_MIN)
            return i;
    }
    return 0;
}
