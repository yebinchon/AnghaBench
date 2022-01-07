
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf_t ;
struct TYPE_4__ {unsigned int factor; unsigned int offset; size_t size; } ;
typedef TYPE_1__ blip_t ;


 int* SAMPLES (TYPE_1__*) ;
 int assert (int) ;
 unsigned int delta_bits ;
 int delta_unit ;
 size_t end_frame_extra ;
 unsigned int frac_bits ;
 unsigned int pre_shift ;

void blip_add_delta_fast( blip_t* m, unsigned time, int delta )
{
 unsigned fixed = (unsigned) ((time * m->factor + m->offset) >> pre_shift);
 buf_t* out = SAMPLES( m ) + (fixed >> frac_bits);

 int interp = fixed >> (frac_bits - delta_bits) & (delta_unit - 1);
 int delta2 = delta * interp;






 out [7] += delta * delta_unit - delta2;
 out [8] += delta2;
}
