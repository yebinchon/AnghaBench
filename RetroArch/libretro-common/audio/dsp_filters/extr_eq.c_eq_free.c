
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eq_data {struct eq_data* filter; struct eq_data* fftblock; struct eq_data* block; struct eq_data* save; int fft; } ;


 int fft_free (int ) ;
 int free (struct eq_data*) ;

__attribute__((used)) static void eq_free(void *data)
{
   struct eq_data *eq = (struct eq_data*)data;
   if (!eq)
      return;

   fft_free(eq->fft);
   free(eq->save);
   free(eq->block);
   free(eq->fftblock);
   free(eq->filter);
   free(eq);
}
