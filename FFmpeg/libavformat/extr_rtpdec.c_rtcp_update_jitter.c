
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef void* int32_t ;
struct TYPE_3__ {int jitter; void* transit; } ;
typedef TYPE_1__ RTPStatistics ;


 void* FFABS (void*) ;

__attribute__((used)) static void rtcp_update_jitter(RTPStatistics *s, uint32_t sent_timestamp,
                               uint32_t arrival_timestamp)
{

    uint32_t transit = arrival_timestamp - sent_timestamp;
    uint32_t prev_transit = s->transit;
    int32_t d = transit - prev_transit;




    d = FFABS(d);
    s->transit = transit;
    if (!prev_transit)
        return;
    s->jitter += d - (int32_t) ((s->jitter + 8) >> 4);
}
