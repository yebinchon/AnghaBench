
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void** vec3_t ;
struct TYPE_8__ {double alpha; double height; double width; double endheight; double endwidth; int* vel; int* accel; int org; int type; int pshader; scalar_t__ alphavel; int color; scalar_t__ startfade; scalar_t__ endtime; scalar_t__ time; struct TYPE_8__* next; } ;
typedef TYPE_2__ cparticle_t ;
struct TYPE_10__ {scalar_t__ time; } ;
struct TYPE_7__ {int tracerShader; } ;
struct TYPE_9__ {TYPE_1__ media; } ;


 int EMISIVEFADE ;
 int P_SMOKE ;
 int VectorCopy (void**,int ) ;
 TYPE_2__* active_particles ;
 TYPE_5__ cg ;
 TYPE_4__ cgs ;
 TYPE_2__* free_particles ;

void CG_ParticleBulletDebris (vec3_t org, vec3_t vel, int duration)
{

 cparticle_t *p;

 if (!free_particles)
  return;
 p = free_particles;
 free_particles = p->next;
 p->next = active_particles;
 active_particles = p;
 p->time = cg.time;

 p->endtime = cg.time + duration;
 p->startfade = cg.time + duration/2;

 p->color = EMISIVEFADE;
 p->alpha = 1.0;
 p->alphavel = 0;

 p->height = 0.5;
 p->width = 0.5;
 p->endheight = 0.5;
 p->endwidth = 0.5;

 p->pshader = cgs.media.tracerShader;

 p->type = P_SMOKE;

 VectorCopy(org, p->org);

 p->vel[0] = vel[0];
 p->vel[1] = vel[1];
 p->vel[2] = vel[2];
 p->accel[0] = p->accel[1] = p->accel[2] = 0;

 p->accel[2] = -60;
 p->vel[2] += -20;

}
