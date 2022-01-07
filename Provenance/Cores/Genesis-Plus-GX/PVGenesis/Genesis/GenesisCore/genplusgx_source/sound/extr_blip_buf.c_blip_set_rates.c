
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double fixed_t ;
struct TYPE_3__ {double factor; } ;
typedef TYPE_1__ blip_t ;


 int assert (int) ;
 double time_unit ;

void blip_set_rates( blip_t* m, double clock_rate, double sample_rate )
{
 double factor = time_unit * sample_rate / clock_rate;
 m->factor = (fixed_t) factor;
 if ( m->factor < factor )
  m->factor++;



}
