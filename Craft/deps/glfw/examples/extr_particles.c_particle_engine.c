
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int active; } ;


 float BIRTH_INTERVAL ;
 int MAX_PARTICLES ;
 float MIN_DELTA_T ;
 int init_particle (TYPE_1__*,double) ;
 float min_age ;
 TYPE_1__* particles ;
 int update_particle (TYPE_1__*,float) ;

__attribute__((used)) static void particle_engine(double t, float dt)
{
    int i;
    float dt2;


    while (dt > 0.f)
    {

        dt2 = dt < MIN_DELTA_T ? dt : MIN_DELTA_T;

        for (i = 0; i < MAX_PARTICLES; i++)
            update_particle(&particles[i], dt2);

        min_age += dt2;


        while (min_age >= BIRTH_INTERVAL)
        {
            min_age -= BIRTH_INTERVAL;


            for (i = 0; i < MAX_PARTICLES; i++)
            {
                if (!particles[i].active)
                {
                    init_particle(&particles[i], t + min_age);
                    update_particle(&particles[i], min_age);
                    break;
                }
            }
        }

        dt -= dt2;
    }
}
