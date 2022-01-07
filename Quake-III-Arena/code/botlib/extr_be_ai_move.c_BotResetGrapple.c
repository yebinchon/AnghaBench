
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int moveflags; scalar_t__ grapplevisible_time; int client; int lastreachnum; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_9__ {int traveltype; } ;
typedef TYPE_2__ aas_reachability_t ;
struct TYPE_12__ {int (* Print ) (int ,char*) ;} ;
struct TYPE_11__ {int string; } ;
struct TYPE_10__ {scalar_t__ value; } ;


 int AAS_ReachabilityFromNum (int ,TYPE_2__*) ;
 int EA_Command (int ,int ) ;
 int MFL_ACTIVEGRAPPLE ;
 int PRT_MESSAGE ;
 int TRAVELTYPE_MASK ;
 int TRAVEL_GRAPPLEHOOK ;
 TYPE_5__ botimport ;
 TYPE_4__* cmd_grappleoff ;
 TYPE_3__* offhandgrapple ;
 int stub1 (int ,char*) ;

void BotResetGrapple(bot_movestate_t *ms)
{
 aas_reachability_t reach;

 AAS_ReachabilityFromNum(ms->lastreachnum, &reach);

 if ((reach.traveltype & TRAVELTYPE_MASK) != TRAVEL_GRAPPLEHOOK)
 {
  if ((ms->moveflags & MFL_ACTIVEGRAPPLE) || ms->grapplevisible_time)
  {
   if (offhandgrapple->value)
    EA_Command(ms->client, cmd_grappleoff->string);
   ms->moveflags &= ~MFL_ACTIVEGRAPPLE;
   ms->grapplevisible_time = 0;



  }
 }
}
