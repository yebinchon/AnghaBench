
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fixed_t ;
struct TYPE_3__ {int offset; int size; int factor; } ;
typedef TYPE_1__ blip_t ;


 int assert (int) ;
 int time_bits ;
 int time_unit ;

int blip_clocks_needed( const blip_t* m, int samples )
{
 fixed_t needed;






  needed = (fixed_t) samples * time_unit;
 if ( needed < m->offset )
  return 0;

 return (needed - m->offset + m->factor - 1) / m->factor;
}
