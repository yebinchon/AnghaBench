
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float tv_sec; float tv_usec; } ;
struct TYPE_4__ {float tv_sec; float tv_usec; } ;


 float fabs (float) ;
 int gettimeofday (TYPE_1__*,int *) ;
 TYPE_2__ tv_start ;
 TYPE_1__ tv_stop ;

__attribute__((used)) static float get_time_ms(void)
{
    gettimeofday(&tv_stop, ((void*)0));

    float dt = (tv_stop.tv_sec - tv_start.tv_sec) * 1e3f +
                (tv_stop.tv_usec - tv_start.tv_usec) * 1e-3f;
    return fabs(dt);
}
