
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int spec_start; scalar_t__ succ_high; int succ_low; int eob_run; int spec_end; int code_bits; int code_buffer; } ;
typedef TYPE_1__ rjpeg_jpeg ;
typedef int rjpeg_huffman ;
typedef int int16_t ;


 int FAST_BITS ;
 int rjpeg_extend_receive (TYPE_1__*,int) ;
 int rjpeg_grow_buffer_unsafe (TYPE_1__*) ;
 size_t* rjpeg_jpeg_dezigzag ;
 scalar_t__ rjpeg_jpeg_get_bit (TYPE_1__*) ;
 scalar_t__ rjpeg_jpeg_get_bits (TYPE_1__*,int) ;
 int rjpeg_jpeg_huff_decode (TYPE_1__*,int *) ;

__attribute__((used)) static int rjpeg_jpeg_decode_block_prog_ac(
      rjpeg_jpeg *j,
      short data[64],
      rjpeg_huffman *hac,
      int16_t *fac)
{
   int k;


   if (j->spec_start == 0)
      return 0;

   if (j->succ_high == 0)
   {
      int shift = j->succ_low;

      if (j->eob_run)
      {
         --j->eob_run;
         return 1;
      }

      k = j->spec_start;
      do
      {
         unsigned int zig;
         int c,r,s;
         if (j->code_bits < 16)
            rjpeg_grow_buffer_unsafe(j);
         c = (j->code_buffer >> (32 - FAST_BITS)) & ((1 << FAST_BITS)-1);
         r = fac[c];
         if (r)
         {

            k += (r >> 4) & 15;
            s = r & 15;
            j->code_buffer <<= s;
            j->code_bits -= s;
            zig = rjpeg_jpeg_dezigzag[k++];
            data[zig] = (short) ((r >> 8) << shift);
         }
         else
         {
            int rs = rjpeg_jpeg_huff_decode(j, hac);


            if (rs < 0)
               return 0;

            s = rs & 15;
            r = rs >> 4;
            if (s == 0)
            {
               if (r < 15)
               {
                  j->eob_run = (1 << r);
                  if (r)
                     j->eob_run += rjpeg_jpeg_get_bits(j, r);
                  --j->eob_run;
                  break;
               }
               k += 16;
            }
            else
            {
               k += r;
               zig = rjpeg_jpeg_dezigzag[k++];
               data[zig] = (short) (rjpeg_extend_receive(j,s) << shift);
            }
         }
      } while (k <= j->spec_end);
   }
   else
   {


      short bit = (short) (1 << j->succ_low);

      if (j->eob_run)
      {
         --j->eob_run;
         for (k = j->spec_start; k <= j->spec_end; ++k)
         {
            short *p = &data[rjpeg_jpeg_dezigzag[k]];
            if (*p != 0)
               if (rjpeg_jpeg_get_bit(j))
                  if ((*p & bit) == 0)
                  {
                     if (*p > 0)
                        *p += bit;
                     else
                        *p -= bit;
                  }
         }
      }
      else
      {
         k = j->spec_start;
         do
         {
            int r,s;
            int rs = rjpeg_jpeg_huff_decode(j, hac);


            if (rs < 0)
               return 0;

            s = rs & 15;
            r = rs >> 4;
            if (s == 0)
            {
               if (r < 15)
               {
                  j->eob_run = (1 << r) - 1;
                  if (r)
                     j->eob_run += rjpeg_jpeg_get_bits(j, r);
                  r = 64;
               }
               else
               {



               }
            }
            else
            {

               if (s != 1)
                  return 0;


               if (rjpeg_jpeg_get_bit(j))
                  s = bit;
               else
                  s = -bit;
            }


            while (k <= j->spec_end)
            {
               short *p = &data[rjpeg_jpeg_dezigzag[k++]];
               if (*p != 0)
               {
                  if (rjpeg_jpeg_get_bit(j))
                     if ((*p & bit) == 0)
                     {
                        if (*p > 0)
                           *p += bit;
                        else
                           *p -= bit;
                     }
               }
               else
               {
                  if (r == 0)
                  {
                     *p = (short) s;
                     break;
                  }
                  --r;
               }
            }
         } while (k <= j->spec_end);
      }
   }
   return 1;
}
