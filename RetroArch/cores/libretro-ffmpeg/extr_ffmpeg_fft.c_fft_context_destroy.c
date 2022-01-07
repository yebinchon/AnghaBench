
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sliding; int * passes; } ;
typedef TYPE_1__ fft_t ;


 int fft_init_multisample (TYPE_1__*,int ,int ,int ) ;
 int free (int *) ;

__attribute__((used)) static void fft_context_destroy(fft_t *fft)
{
   fft_init_multisample(fft, 0, 0, 0);
   if (fft->passes)
      free(fft->passes);
   fft->passes = ((void*)0);
   if (fft->sliding)
      free(fft->sliding);
   fft->sliding = ((void*)0);
}
