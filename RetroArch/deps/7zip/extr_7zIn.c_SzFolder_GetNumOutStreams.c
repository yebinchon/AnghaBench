
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t NumCoders; TYPE_1__* Coders; } ;
struct TYPE_4__ {scalar_t__ NumOutStreams; } ;
typedef TYPE_2__ CSzFolder ;



uint32_t SzFolder_GetNumOutStreams(CSzFolder *p)
{
   uint32_t result = 0;
   uint32_t i;
   for (i = 0; i < p->NumCoders; i++)
      result += p->Coders[i].NumOutStreams;
   return result;
}
