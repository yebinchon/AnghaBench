
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int probation; int max_seq; } ;
typedef TYPE_1__ RTPStatistics ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void rtp_init_statistics(RTPStatistics *s, uint16_t base_sequence)
{
    memset(s, 0, sizeof(RTPStatistics));
    s->max_seq = base_sequence;
    s->probation = 1;
}
