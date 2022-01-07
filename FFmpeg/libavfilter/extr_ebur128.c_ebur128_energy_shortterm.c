
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* d; } ;
struct TYPE_5__ {int samples_in_100ms; } ;
typedef TYPE_2__ FFEBUR128State ;


 int ebur128_energy_in_interval (TYPE_2__*,int,double*) ;

__attribute__((used)) static int ebur128_energy_shortterm(FFEBUR128State * st, double *out)
{
    return ebur128_energy_in_interval(st, st->d->samples_in_100ms * 30,
                                      out);
}
