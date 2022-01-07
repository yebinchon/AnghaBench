
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nb_samples; float sum; int peak; } ;
struct TYPE_6__ {scalar_t__ tc_samples; } ;
typedef TYPE_1__ DRMeterContext ;
typedef TYPE_2__ ChannelStats ;


 int FFABS (float) ;
 int FFMAX (int ,int ) ;
 int finish_block (TYPE_2__*) ;

__attribute__((used)) static void update_stat(DRMeterContext *s, ChannelStats *p, float sample)
{
    if (p->nb_samples >= s->tc_samples) {
        finish_block(p);
    }

    p->peak = FFMAX(FFABS(sample), p->peak);
    p->sum += sample * sample;
    p->nb_samples++;
}
