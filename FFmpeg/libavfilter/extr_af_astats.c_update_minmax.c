
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double min; double max; } ;
typedef TYPE_1__ ChannelStats ;
typedef int AudioStatsContext ;



__attribute__((used)) static inline void update_minmax(AudioStatsContext *s, ChannelStats *p, double d)
{
    if (d < p->min)
        p->min = d;
    if (d > p->max)
        p->max = d;
}
