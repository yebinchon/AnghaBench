#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct eq_gain {int dummy; } ;
struct eq_data {int block_size; int /*<<< orphan*/  filter; int /*<<< orphan*/  fft; } ;
typedef  int /*<<< orphan*/  fft_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,float) ; 
 int /*<<< orphan*/  FUNC8 (float*) ; 
 int /*<<< orphan*/  gains_cmp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct eq_gain*,unsigned int,int) ; 
 double FUNC10 (double,double) ; 
 int /*<<< orphan*/  FUNC11 (struct eq_gain*,unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct eq_data *eq, unsigned size_log2,
      struct eq_gain *gains, unsigned num_gains, double beta, const char *filter_path)
{
   int i;
   int half_block_size = eq->block_size >> 1;
   double window_mod = 1.0 / FUNC10(0.0, beta);

   fft_t *fft = FUNC3(size_log2);
   float *time_filter = (float*)FUNC0(eq->block_size * 2 + 1, sizeof(*time_filter));
   if (!fft || !time_filter)
      goto end;

   /* Make sure bands are in correct order. */
   FUNC11(gains, num_gains, sizeof(*gains), gains_cmp);

   /* Compute desired filter response. */
   FUNC9(eq->filter, gains, num_gains, half_block_size);

   /* Get equivalent time-domain filter. */
   FUNC5(fft, time_filter, eq->filter, 1);

   /* ifftshift() to create the correct linear phase filter.
    * The filter response was designed with zero phase, which
    * won't work unless we compensate
    * for the repeating property of the FFT here
    * by flipping left and right blocks. */
   for (i = 0; i < half_block_size; i++)
   {
      float tmp = time_filter[i + half_block_size];
      time_filter[i + half_block_size] = time_filter[i];
      time_filter[i] = tmp;
   }

   /* Apply a window to smooth out the frequency repsonse. */
   for (i = 0; i < (int)eq->block_size; i++)
   {
      /* Kaiser window. */
      double phase = (double)i / eq->block_size;
      phase = 2.0 * (phase - 0.5);
      time_filter[i] *= window_mod * FUNC10(phase, beta);
   }

   /* Debugging. */
   if (filter_path)
   {
      FILE *file = FUNC6(filter_path, "w");
      if (file)
      {
         for (i = 0; i < (int)eq->block_size - 1; i++)
            FUNC7(file, "%.8f\n", time_filter[i + 1]);
         FUNC1(file);
      }
   }

   /* Padded FFT to create our FFT filter.
    * Make our even-length filter odd by discarding the first coefficient.
    * For some interesting reason, this allows us to design an odd-length linear phase filter.
    */
   FUNC4(eq->fft, eq->filter, time_filter + 1, 1);

end:
   FUNC2(fft);
   FUNC8(time_filter);
}