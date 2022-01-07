
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* fast; int* values; int* size; } ;
typedef TYPE_1__ rjpeg_huffman ;
typedef scalar_t__ int16_t ;


 int FAST_BITS ;

__attribute__((used)) static void rjpeg_build_fast_ac(int16_t *fast_ac, rjpeg_huffman *h)
{
   int i;

   for (i = 0; i < (1 << FAST_BITS); ++i)
   {
      uint8_t fast = h->fast[i];

      fast_ac[i] = 0;

      if (fast < 255)
      {
         int rs = h->values[fast];
         int run = (rs >> 4) & 15;
         int magbits = rs & 15;
         int len = h->size[fast];

         if (magbits && len + magbits <= FAST_BITS)
         {

            int k = ((i << len) & ((1 << FAST_BITS) - 1)) >> (FAST_BITS - magbits);
            int m = 1 << (magbits - 1);
            if (k < m)
               k += (-1 << magbits) + 1;


            if (k >= -128 && k <= 127)
               fast_ac[i] = (int16_t) ((k << 8) + (run << 4) + (len + magbits));
         }
      }
   }
}
