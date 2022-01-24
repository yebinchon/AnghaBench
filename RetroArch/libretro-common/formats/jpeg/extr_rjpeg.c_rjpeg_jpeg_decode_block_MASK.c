#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {int code_bits; int code_buffer; TYPE_1__* img_comp; } ;
typedef  TYPE_2__ rjpeg_jpeg ;
typedef  int /*<<< orphan*/  rjpeg_huffman ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_7__ {int dc_pred; } ;

/* Variables and functions */
 int FAST_BITS ; 
 int /*<<< orphan*/  FUNC0 (short*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 unsigned int* rjpeg_jpeg_dezigzag ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
      rjpeg_jpeg *j, short data[64],
      rjpeg_huffman *hdc,
      rjpeg_huffman *hac,
      int16_t *fac,
      int b,
      uint8_t *dequant)
{
   int dc,k;
   int t;
   int diff      = 0;

   if (j->code_bits < 16)
      FUNC2(j);
   t = FUNC3(j, hdc);

   /* Bad huffman code. Corrupt JPEG? */
   if (t < 0)
      return 0;

   /* 0 all the ac values now so we can do it 32-bits at a time */
   FUNC0(data,0,64*sizeof(data[0]));

   if (t)
      diff                = FUNC1(j, t);
   dc                     = j->img_comp[b].dc_pred + diff;
   j->img_comp[b].dc_pred = dc;
   data[0]                = (short) (dc * dequant[0]);

   /* decode AC components, see JPEG spec */
   k                      = 1;
   do
   {
      unsigned int zig;
      int c,r,s;
      if (j->code_bits < 16)
         FUNC2(j);
      c = (j->code_buffer >> (32 - FAST_BITS)) & ((1 << FAST_BITS)-1);
      r = fac[c];
      if (r)
      {
         /* fast-AC path */
         k               += (r >> 4) & 15; /* run */
         s                = r & 15; /* combined length */
         j->code_buffer <<= s;
         j->code_bits    -= s;
         /* decode into unzigzag'd location */
         zig              = rjpeg_jpeg_dezigzag[k++];
         data[zig]        = (short) ((r >> 8) * dequant[zig]);
      }
      else
      {
         int rs = FUNC3(j, hac);

         /* Bad huffman code. Corrupt JPEG? */
         if (rs < 0)
            return 0;

         s = rs & 15;
         r = rs >> 4;
         if (s == 0)
         {
            if (rs != 0xf0)
               break; /* end block */
            k += 16;
         }
         else
         {
            k += r;
            /* decode into unzigzag'd location */
            zig = rjpeg_jpeg_dezigzag[k++];
            data[zig] = (short) (FUNC1(j,s) * dequant[zig]);
         }
      }
   } while (k < 64);
   return 1;
}