
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int moveflags; } ;
typedef TYPE_1__ bot_movestate_t ;
typedef int aas_reachability_t ;
struct TYPE_8__ {int weapon; } ;
typedef TYPE_2__ aas_entityinfo_t ;
struct TYPE_10__ {scalar_t__ value; } ;
struct TYPE_9__ {scalar_t__ value; } ;


 int AAS_EntityInfo (int,TYPE_2__*) ;
 int AAS_EntityType (int) ;
 int AAS_NextEntity (int) ;
 int MFL_GRAPPLEPULL ;
 TYPE_4__* entitytypemissile ;
 TYPE_3__* weapindex_grapple ;

int GrappleState(bot_movestate_t *ms, aas_reachability_t *reach)
{
 int i;
 aas_entityinfo_t entinfo;


 if (ms->moveflags & MFL_GRAPPLEPULL)
  return 2;


 for (i = AAS_NextEntity(0); i; i = AAS_NextEntity(i))
 {
  if (AAS_EntityType(i) == (int) entitytypemissile->value)
  {
   AAS_EntityInfo(i, &entinfo);
   if (entinfo.weapon == (int) weapindex_grapple->value)
   {
    return 1;
   }
  }
 }

 return 0;
}
