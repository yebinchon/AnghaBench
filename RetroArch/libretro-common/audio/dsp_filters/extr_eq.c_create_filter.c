
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eq_gain {int dummy; } ;
struct eq_data {int block_size; int filter; int fft; } ;
typedef int fft_t ;
typedef int FILE ;


 scalar_t__ calloc (int,int) ;
 int fclose (int *) ;
 int fft_free (int *) ;
 int * fft_new (unsigned int) ;
 int fft_process_forward (int ,int ,float*,int) ;
 int fft_process_inverse (int *,float*,int ,int) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,float) ;
 int free (float*) ;
 int gains_cmp ;
 int generate_response (int ,struct eq_gain*,unsigned int,int) ;
 double kaiser_window_function (double,double) ;
 int qsort (struct eq_gain*,unsigned int,int,int ) ;

__attribute__((used)) static void create_filter(struct eq_data *eq, unsigned size_log2,
      struct eq_gain *gains, unsigned num_gains, double beta, const char *filter_path)
{
   int i;
   int half_block_size = eq->block_size >> 1;
   double window_mod = 1.0 / kaiser_window_function(0.0, beta);

   fft_t *fft = fft_new(size_log2);
   float *time_filter = (float*)calloc(eq->block_size * 2 + 1, sizeof(*time_filter));
   if (!fft || !time_filter)
      goto end;


   qsort(gains, num_gains, sizeof(*gains), gains_cmp);


   generate_response(eq->filter, gains, num_gains, half_block_size);


   fft_process_inverse(fft, time_filter, eq->filter, 1);






   for (i = 0; i < half_block_size; i++)
   {
      float tmp = time_filter[i + half_block_size];
      time_filter[i + half_block_size] = time_filter[i];
      time_filter[i] = tmp;
   }


   for (i = 0; i < (int)eq->block_size; i++)
   {

      double phase = (double)i / eq->block_size;
      phase = 2.0 * (phase - 0.5);
      time_filter[i] *= window_mod * kaiser_window_function(phase, beta);
   }


   if (filter_path)
   {
      FILE *file = fopen(filter_path, "w");
      if (file)
      {
         for (i = 0; i < (int)eq->block_size - 1; i++)
            fprintf(file, "%.8f\n", time_filter[i + 1]);
         fclose(file);
      }
   }





   fft_process_forward(eq->fft, eq->filter, time_filter + 1, 1);

end:
   fft_free(fft);
   free(time_filter);
}
