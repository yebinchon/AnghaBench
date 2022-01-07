
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
typedef scalar_t__ qhandle_t ;
struct TYPE_5__ {int time; double alpha; int roll; int endtime; int startfade; int width; int height; int endheight; int endwidth; int rotate; int org; int type; scalar_t__ pshader; scalar_t__ alphavel; struct TYPE_5__* next; } ;
typedef TYPE_1__ cparticle_t ;
struct TYPE_6__ {int time; } ;


 int CG_Printf (char*) ;
 int P_SPRITE ;
 int VectorCopy (int ,int ) ;
 TYPE_1__* active_particles ;
 TYPE_3__ cg ;
 TYPE_1__* free_particles ;
 int qfalse ;
 int rand () ;

void CG_ParticleMisc (qhandle_t pshader, vec3_t origin, int size, int duration, float alpha)
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
 p->alpha = 1.0;
 p->alphavel = 0;
 p->roll = rand()%179;

 p->pshader = pshader;

 if (duration > 0)
  p->endtime = cg.time + duration;
 else
  p->endtime = duration;

 p->startfade = cg.time;

 p->width = size;
 p->height = size;

 p->endheight = size;
 p->endwidth = size;

 p->type = P_SPRITE;

 VectorCopy( origin, p->org );

 p->rotate = qfalse;
}
