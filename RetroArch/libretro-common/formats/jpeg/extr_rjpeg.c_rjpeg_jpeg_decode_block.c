
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int code_bits; int code_buffer; TYPE_1__* img_comp; } ;
typedef TYPE_2__ rjpeg_jpeg ;
typedef int rjpeg_huffman ;
typedef int int16_t ;
typedef int data ;
struct TYPE_7__ {int dc_pred; } ;


 int FAST_BITS ;
 int memset (short*,int ,int) ;
 int rjpeg_extend_receive (TYPE_2__*,int) ;
 int rjpeg_grow_buffer_unsafe (TYPE_2__*) ;
 unsigned int* rjpeg_jpeg_dezigzag ;
 int rjpeg_jpeg_huff_decode (TYPE_2__*,int *) ;

__attribute__((used)) static int rjpeg_jpeg_decode_block(
      rjpeg_jpeg *j, short data[64],
      rjpeg_huffman *hdc,
      rjpeg_huffman *hac,
      int16_t *fac,
      int b,
      uint8_t *dequant)
{
   int dc,k;
   int t;
   int diff = 0;

   if (j->code_bits < 16)
      rjpeg_grow_buffer_unsafe(j);
   t = rjpeg_jpeg_huff_decode(j, hdc);


   if (t < 0)
      return 0;


   memset(data,0,64*sizeof(data[0]));

   if (t)
      diff = rjpeg_extend_receive(j, t);
   dc = j->img_comp[b].dc_pred + diff;
   j->img_comp[b].dc_pred = dc;
   data[0] = (short) (dc * dequant[0]);


   k = 1;
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
         data[zig] = (short) ((r >> 8) * dequant[zig]);
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
            if (rs != 0xf0)
               break;
            k += 16;
         }
         else
         {
            k += r;

            zig = rjpeg_jpeg_dezigzag[k++];
            data[zig] = (short) (rjpeg_extend_receive(j,s) * dequant[zig]);
         }
      }
   } while (k < 64);
   return 1;
}
