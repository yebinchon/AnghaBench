
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void** vec3_t ;
typedef scalar_t__ qhandle_t ;
struct TYPE_5__ {float alpha; int start; int end; float height; float width; int* vel; int snum; int link; scalar_t__* accel; scalar_t__* org; int type; scalar_t__ pshader; scalar_t__ alphavel; scalar_t__ color; int time; struct TYPE_5__* next; } ;
typedef TYPE_1__ cparticle_t ;
struct TYPE_6__ {int time; } ;


 int CG_Printf (char*) ;
 int P_BUBBLE ;
 int P_BUBBLE_TURBULENT ;
 int VectorCopy (void**,scalar_t__*) ;
 TYPE_1__* active_particles ;
 TYPE_3__ cg ;
 int crandom () ;
 TYPE_1__* free_particles ;
 int qtrue ;

void CG_ParticleBubble (qhandle_t pshader, vec3_t origin, vec3_t origin2, int turb, float range, int snum)
{
 cparticle_t *p;
 float randsize;

 if (!pshader)
  CG_Printf ("CG_ParticleSnow pshader == ZERO!\n");

 if (!free_particles)
  return;
 p = free_particles;
 free_particles = p->next;
 p->next = active_particles;
 active_particles = p;
 p->time = cg.time;
 p->color = 0;
 p->alpha = 0.40f;
 p->alphavel = 0;
 p->start = origin[2];
 p->end = origin2[2];
 p->pshader = pshader;

 randsize = 1 + (crandom() * 0.5);

 p->height = randsize;
 p->width = randsize;

 p->vel[2] = 50 + ( crandom() * 10 );

 if (turb)
 {
  p->type = P_BUBBLE_TURBULENT;
  p->vel[2] = 50 * 1.3;
 }
 else
 {
  p->type = P_BUBBLE;
 }

 VectorCopy(origin, p->org);

 p->org[0] = p->org[0] + ( crandom() * range);
 p->org[1] = p->org[1] + ( crandom() * range);
 p->org[2] = p->org[2] + ( crandom() * (p->start - p->end));

 p->vel[0] = p->vel[1] = 0;

 p->accel[0] = p->accel[1] = p->accel[2] = 0;

 if (turb)
 {
  p->vel[0] = crandom() * 4;
  p->vel[1] = crandom() * 4;
 }


 p->snum = snum;
 p->link = qtrue;

}
