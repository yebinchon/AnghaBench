
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float life; float vz; float x; float vx; float y; float vy; float z; scalar_t__ active; } ;
typedef TYPE_1__ PARTICLE ;


 int FOUNTAIN_HEIGHT ;
 int FOUNTAIN_R2 ;
 int FRICTION ;
 float GRAVITY ;
 float LIFE_SPAN ;
 int PARTICLE_SIZE ;

__attribute__((used)) static void update_particle(PARTICLE *p, float dt)
{

    if (!p->active)
        return;


    p->life -= dt * (1.f / LIFE_SPAN);


    if (p->life <= 0.f)
    {
        p->active = 0;
        return;
    }


    p->vz = p->vz - GRAVITY * dt;


    p->x = p->x + p->vx * dt;
    p->y = p->y + p->vy * dt;
    p->z = p->z + p->vz * dt;


    if (p->vz < 0.f)
    {

        if ((p->x * p->x + p->y * p->y) < FOUNTAIN_R2 &&
            p->z < (FOUNTAIN_HEIGHT + PARTICLE_SIZE / 2))
        {
            p->vz = -FRICTION * p->vz;
            p->z = FOUNTAIN_HEIGHT + PARTICLE_SIZE / 2 +
                    FRICTION * (FOUNTAIN_HEIGHT +
                    PARTICLE_SIZE / 2 - p->z);
        }


        else if (p->z < PARTICLE_SIZE / 2)
        {
            p->vz = -FRICTION * p->vz;
            p->z = PARTICLE_SIZE / 2 +
                    FRICTION * (PARTICLE_SIZE / 2 - p->z);
        }
    }
}
