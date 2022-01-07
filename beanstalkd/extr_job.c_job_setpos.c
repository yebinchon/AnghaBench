
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t heap_index; } ;
typedef TYPE_1__ Job ;



void
job_setpos(void *j, size_t pos)
{
    ((Job *)j)->heap_index = pos;
}
