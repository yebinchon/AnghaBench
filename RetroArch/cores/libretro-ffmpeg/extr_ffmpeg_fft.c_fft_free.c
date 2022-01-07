
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fft_t ;


 int fft_context_destroy (int *) ;
 int free (int *) ;

void fft_free(fft_t *fft)
{
   if (!fft)
      return;

   fft_context_destroy(fft);
   if (fft)
      free(fft);
   fft = ((void*)0);
}
