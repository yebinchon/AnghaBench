
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_7__ {scalar_t__ type; int snum; int link; struct TYPE_7__* next; } ;
typedef TYPE_2__ cparticle_t ;
struct TYPE_6__ {int frame; } ;
struct TYPE_8__ {TYPE_1__ currentState; } ;
typedef TYPE_3__ centity_t ;


 scalar_t__ P_WEATHER ;
 scalar_t__ P_WEATHER_TURBULENT ;
 TYPE_2__* active_particles ;
 int qfalse ;
 int qtrue ;

void CG_SnowLink (centity_t *cent, qboolean particleOn)
{
 cparticle_t *p, *next;
 int id;

 id = cent->currentState.frame;

 for (p=active_particles ; p ; p=next)
 {
  next = p->next;

  if (p->type == P_WEATHER || p->type == P_WEATHER_TURBULENT)
  {
   if (p->snum == id)
   {
    if (particleOn)
     p->link = qtrue;
    else
     p->link = qfalse;
   }
  }

 }
}
