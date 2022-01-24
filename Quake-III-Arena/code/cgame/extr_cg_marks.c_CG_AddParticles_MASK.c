#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_7__ {double time; float alpha; float alphavel; int type; int color; double endtime; double* org; float* vel; float* accel; struct TYPE_7__* next; } ;
typedef  TYPE_2__ cparticle_t ;
struct TYPE_6__ {int /*<<< orphan*/ * viewaxis; } ;
struct TYPE_8__ {double time; TYPE_1__ refdef; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,double*,float) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int P_ANIM ; 
 int P_BAT ; 
 int P_BLEED ; 
 int P_FLAT_SCALEUP_FADE ; 
 int P_SMOKE ; 
 int P_SMOKE_IMPACT ; 
 int P_SPRITE ; 
 int P_WEATHER_FLURRY ; 
 size_t ROLL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* active_particles ; 
 TYPE_3__ cg ; 
 void* free_particles ; 
 int /*<<< orphan*/  initparticles ; 
 double oldtime ; 
 int /*<<< orphan*/  pvforward ; 
 int /*<<< orphan*/  pvright ; 
 int /*<<< orphan*/  pvup ; 
 int /*<<< orphan*/  rforward ; 
 double roll ; 
 int /*<<< orphan*/  rright ; 
 int /*<<< orphan*/  rup ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,double*) ; 

void FUNC5 (void)
{
	cparticle_t		*p, *next;
	float			alpha;
	float			time, time2;
	vec3_t			org;
	int				color;
	cparticle_t		*active, *tail;
	int				type;
	vec3_t			rotate_ang;

	if (!initparticles)
		FUNC2 ();

	FUNC3( cg.refdef.viewaxis[0], pvforward );
	FUNC3( cg.refdef.viewaxis[1], pvright );
	FUNC3( cg.refdef.viewaxis[2], pvup );

	FUNC4( cg.refdef.viewaxis[0], rotate_ang );
	roll += ((cg.time - oldtime) * 0.1) ;
	rotate_ang[ROLL] += (roll*0.9);
	FUNC0 ( rotate_ang, rforward, rright, rup);
	
	oldtime = cg.time;

	active = NULL;
	tail = NULL;

	for (p=active_particles ; p ; p=next)
	{

		next = p->next;

		time = (cg.time - p->time)*0.001;

		alpha = p->alpha + time*p->alphavel;
		if (alpha <= 0)
		{	// faded out
			p->next = free_particles;
			free_particles = p;
			p->type = 0;
			p->color = 0;
			p->alpha = 0;
			continue;
		}

		if (p->type == P_SMOKE || p->type == P_ANIM || p->type == P_BLEED || p->type == P_SMOKE_IMPACT)
		{
			if (cg.time > p->endtime)
			{
				p->next = free_particles;
				free_particles = p;
				p->type = 0;
				p->color = 0;
				p->alpha = 0;
			
				continue;
			}

		}

		if (p->type == P_WEATHER_FLURRY)
		{
			if (cg.time > p->endtime)
			{
				p->next = free_particles;
				free_particles = p;
				p->type = 0;
				p->color = 0;
				p->alpha = 0;
			
				continue;
			}
		}


		if (p->type == P_FLAT_SCALEUP_FADE)
		{
			if (cg.time > p->endtime)
			{
				p->next = free_particles;
				free_particles = p;
				p->type = 0;
				p->color = 0;
				p->alpha = 0;
				continue;
			}

		}

		if ((p->type == P_BAT || p->type == P_SPRITE) && p->endtime < 0) {
			// temporary sprite
			FUNC1 (p, p->org, alpha);
			p->next = free_particles;
			free_particles = p;
			p->type = 0;
			p->color = 0;
			p->alpha = 0;
			continue;
		}

		p->next = NULL;
		if (!tail)
			active = tail = p;
		else
		{
			tail->next = p;
			tail = p;
		}

		if (alpha > 1.0)
			alpha = 1;

		color = p->color;

		time2 = time*time;

		org[0] = p->org[0] + p->vel[0]*time + p->accel[0]*time2;
		org[1] = p->org[1] + p->vel[1]*time + p->accel[1]*time2;
		org[2] = p->org[2] + p->vel[2]*time + p->accel[2]*time2;

		type = p->type;

		FUNC1 (p, org, alpha);
	}

	active_particles = active;
}