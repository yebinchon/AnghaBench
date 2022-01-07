
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf_t ;
struct TYPE_5__ {int offset; int integrator; } ;
typedef TYPE_1__ blip_t ;


 int ARITH_SHIFT (int,int) ;
 int CLAMP (int) ;
 int * SAMPLES (TYPE_1__*) ;
 int assert (int) ;
 int bass_shift ;
 int delta_bits ;
 int remove_samples (TYPE_1__*,int) ;
 int time_bits ;

int blip_read_samples( blip_t* m, short out [], int count)
{
  {
  buf_t const* in = SAMPLES( m );
  buf_t const* end = in + count;
  int sum = m->integrator;
  do
  {

   int s = ARITH_SHIFT( sum, delta_bits );

   sum += *in++;

   CLAMP( s );

   *out = s;
   out += 2;


   sum -= s << (delta_bits - bass_shift);
  }
  while ( in != end );
  m->integrator = sum;

  remove_samples( m, count );
 }

 return count;
}
