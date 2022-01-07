
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int start_ts; } ;
typedef TYPE_1__ Interval ;


 int FFDIFFSIGN (int ,int ) ;

__attribute__((used)) static int cmp_intervals(const void *a, const void *b)
{
    const Interval *i1 = a;
    const Interval *i2 = b;
    return 2 * FFDIFFSIGN(i1->start_ts, i2->start_ts) + FFDIFFSIGN(i1->index, i2->index);
}
