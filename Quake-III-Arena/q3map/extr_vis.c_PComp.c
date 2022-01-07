
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nummightsee; } ;
typedef TYPE_1__ vportal_t ;



int PComp (const void *a, const void *b)
{
 if ( (*(vportal_t **)a)->nummightsee == (*(vportal_t **)b)->nummightsee)
  return 0;
 if ( (*(vportal_t **)a)->nummightsee < (*(vportal_t **)b)->nummightsee)
  return -1;
 return 1;
}
