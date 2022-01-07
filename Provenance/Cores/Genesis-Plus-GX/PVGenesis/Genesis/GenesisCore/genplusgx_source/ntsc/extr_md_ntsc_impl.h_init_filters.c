
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bleed; scalar_t__ resolution; scalar_t__ sharpness; } ;
typedef TYPE_1__ md_ntsc_setup_t ;
struct TYPE_6__ {float* kernel; } ;
typedef TYPE_2__ init_t ;


 scalar_t__ LUMA_CUTOFF ;
 float const PI ;
 int assert (int) ;
 scalar_t__ cos (float const) ;
 scalar_t__ exp (int) ;
 int kernel_half ;
 int kernel_size ;
 scalar_t__ pow (float const,float const) ;
 float rescale_in ;
 int rescale_out ;

__attribute__((used)) static void init_filters( init_t* impl, md_ntsc_setup_t const* setup )
{



  float* const kernels = impl->kernel;



  {

    float const rolloff = 1 + (float) setup->sharpness * (float) 0.032;
    float const maxh = 32;
    float const pow_a_n = (float) pow( rolloff, maxh );
    float sum;
    int i;

    float to_angle = (float) setup->resolution + 1;
    to_angle = PI / maxh * (float) LUMA_CUTOFF * (to_angle * to_angle + 1);

    kernels [kernel_size * 3 / 2] = maxh;
    for ( i = 0; i < kernel_half * 2 + 1; i++ )
    {
      int x = i - kernel_half;
      float angle = x * to_angle;

      if ( x || pow_a_n > (float) 1.056 || pow_a_n < (float) 0.981 )
      {
        float rolloff_cos_a = rolloff * (float) cos( angle );
        float num = 1 - rolloff_cos_a -
            pow_a_n * (float) cos( maxh * angle ) +
            pow_a_n * rolloff * (float) cos( (maxh - 1) * angle );
        float den = 1 - rolloff_cos_a - rolloff_cos_a + rolloff * rolloff;
        float dsf = num / den;
        kernels [kernel_size * 3 / 2 - kernel_half + i] = dsf - (float) 0.5;
      }
    }


    sum = 0;
    for ( i = 0; i < kernel_half * 2 + 1; i++ )
    {
      float x = PI * 2 / (kernel_half * 2) * i;
      float blackman = 0.42f - 0.5f * (float) cos( x ) + 0.08f * (float) cos( x * 2 );
      sum += (kernels [kernel_size * 3 / 2 - kernel_half + i] *= blackman);
    }


    sum = 1.0f / sum;
    for ( i = 0; i < kernel_half * 2 + 1; i++ )
    {
      int x = kernel_size * 3 / 2 - kernel_half + i;
      kernels [x] *= sum;
      assert( kernels [x] == kernels [x] );
    }
  }


  {
    float const cutoff_factor = -0.03125f;
    float cutoff = (float) setup->bleed;
    int i;

    if ( cutoff < 0 )
    {

      cutoff *= cutoff;
      cutoff *= cutoff;
      cutoff *= cutoff;
      cutoff *= -30.0f / 0.65f;
    }
    cutoff = cutoff_factor - 0.65f * cutoff_factor * cutoff;

    for ( i = -kernel_half; i <= kernel_half; i++ )
      kernels [kernel_size / 2 + i] = (float) exp( i * i * cutoff );


    for ( i = 0; i < 2; i++ )
    {
      float sum = 0;
      int x;
      for ( x = i; x < kernel_size; x += 2 )
        sum += kernels [x];

      sum = 1.0f / sum;
      for ( x = i; x < kernel_size; x += 2 )
      {
        kernels [x] *= sum;
        assert( kernels [x] == kernels [x] );
      }
    }
  }
}
