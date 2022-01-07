
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eq_data {float* buffer; unsigned int block_size; unsigned int block_ptr; scalar_t__* save; int * fftblock; int fft; int * filter; scalar_t__* block; } ;
struct dspfilter_output {float* samples; scalar_t__ frames; } ;
struct dspfilter_input {float* samples; unsigned int frames; } ;


 int fft_complex_mul (int ,int ) ;
 int fft_process_forward (int ,int *,scalar_t__*,int) ;
 int fft_process_inverse (int ,float*,int *,int) ;
 int memcpy (scalar_t__*,float const*,int) ;

__attribute__((used)) static void eq_process(void *data, struct dspfilter_output *output,
      const struct dspfilter_input *input)
{
   float *out;
   const float *in;
   unsigned input_frames;
   struct eq_data *eq = (struct eq_data*)data;

   output->samples = eq->buffer;
   output->frames = 0;

   out = eq->buffer;
   in = input->samples;
   input_frames = input->frames;

   while (input_frames)
   {
      unsigned write_avail = eq->block_size - eq->block_ptr;

      if (input_frames < write_avail)
         write_avail = input_frames;

      memcpy(eq->block + eq->block_ptr * 2, in, write_avail * 2 * sizeof(float));

      in += write_avail * 2;
      input_frames -= write_avail;
      eq->block_ptr += write_avail;


      if (eq->block_ptr == eq->block_size)
      {
         unsigned i, c;

         for (c = 0; c < 2; c++)
         {
            fft_process_forward(eq->fft, eq->fftblock, eq->block + c, 2);
            for (i = 0; i < 2 * eq->block_size; i++)
               eq->fftblock[i] = fft_complex_mul(eq->fftblock[i], eq->filter[i]);
            fft_process_inverse(eq->fft, out + c, eq->fftblock, 2);
         }


         for (i = 0; i < 2 * eq->block_size; i++)
            out[i] += eq->save[i];


         memcpy(eq->save, out + 2 * eq->block_size, 2 * eq->block_size * sizeof(float));

         out += eq->block_size * 2;
         output->frames += eq->block_size;
         eq->block_ptr = 0;
      }
   }
}
