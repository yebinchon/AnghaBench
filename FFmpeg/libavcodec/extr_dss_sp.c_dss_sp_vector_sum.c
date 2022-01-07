
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vector_buf; } ;
typedef TYPE_1__ DssSpContext ;


 scalar_t__ FFABS (int ) ;

__attribute__((used)) static int dss_sp_vector_sum(DssSpContext *p, int size)
{
    int i, sum = 0;
    for (i = 0; i < size; i++)
        sum += FFABS(p->vector_buf[i]);
    return sum;
}
