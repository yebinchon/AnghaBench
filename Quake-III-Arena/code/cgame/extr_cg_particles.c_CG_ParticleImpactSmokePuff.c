
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
typedef scalar_t__ qhandle_t ;
struct TYPE_5__ {double alpha; int roll; int width; int height; int endheight; int endwidth; int rotate; int accel; int vel; int org; int type; scalar_t__ endtime; scalar_t__ startfade; scalar_t__ pshader; scalar_t__ alphavel; scalar_t__ time; struct TYPE_5__* next; } ;
typedef TYPE_1__ cparticle_t ;
struct TYPE_6__ {scalar_t__ time; } ;


 int CG_Printf (char*) ;
 int P_SMOKE_IMPACT ;
 int VectorCopy (int ,int ) ;
 int VectorSet (int ,int ,int ,int) ;
 TYPE_1__* active_particles ;
 TYPE_3__ cg ;
 int crandom () ;
 TYPE_1__* free_particles ;
 int qtrue ;
 int rand () ;

void CG_ParticleImpactSmokePuff (qhandle_t pshader, vec3_t origin)
{
 cparticle_t *p;

 if (!pshader)
  CG_Printf ("CG_ParticleImpactSmokePuff pshader == ZERO!\n");

 if (!free_particles)
  return;
 p = free_particles;
 free_particles = p->next;
 p->next = active_particles;
 active_particles = p;
 p->time = cg.time;
 p->alpha = 0.25;
 p->alphavel = 0;
 p->roll = crandom()*179;

 p->pshader = pshader;

 p->endtime = cg.time + 1000;
 p->startfade = cg.time + 100;

 p->width = rand()%4 + 8;
 p->height = rand()%4 + 8;

 p->endheight = p->height *2;
 p->endwidth = p->width * 2;

 p->endtime = cg.time + 500;

 p->type = P_SMOKE_IMPACT;

 VectorCopy( origin, p->org );
 VectorSet(p->vel, 0, 0, 20);
 VectorSet(p->accel, 0, 0, 20);

 p->rotate = qtrue;
}
