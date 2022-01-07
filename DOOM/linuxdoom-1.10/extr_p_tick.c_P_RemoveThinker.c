
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ acv; } ;
struct TYPE_5__ {TYPE_1__ function; } ;
typedef TYPE_2__ thinker_t ;
typedef scalar_t__ actionf_v ;



void P_RemoveThinker (thinker_t* thinker)
{

  thinker->function.acv = (actionf_v)(-1);
}
