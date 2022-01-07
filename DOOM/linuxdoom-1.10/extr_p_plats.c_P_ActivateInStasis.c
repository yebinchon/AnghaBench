
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ actionf_p1 ;
struct TYPE_4__ {scalar_t__ acp1; } ;
struct TYPE_5__ {TYPE_1__ function; } ;
struct TYPE_6__ {int tag; scalar_t__ status; scalar_t__ oldstatus; TYPE_2__ thinker; } ;


 int MAXPLATS ;
 scalar_t__ T_PlatRaise ;
 TYPE_3__** activeplats ;
 scalar_t__ in_stasis ;

void P_ActivateInStasis(int tag)
{
    int i;

    for (i = 0;i < MAXPLATS;i++)
 if (activeplats[i]
     && (activeplats[i])->tag == tag
     && (activeplats[i])->status == in_stasis)
 {
     (activeplats[i])->status = (activeplats[i])->oldstatus;
     (activeplats[i])->thinker.function.acp1
       = (actionf_p1) T_PlatRaise;
 }
}
