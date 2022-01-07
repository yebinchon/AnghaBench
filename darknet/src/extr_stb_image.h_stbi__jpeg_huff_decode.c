
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int code_bits; int code_buffer; } ;
typedef TYPE_1__ stbi__jpeg ;
struct TYPE_7__ {int* fast; int* size; int* values; unsigned int* maxcode; int* delta; int* code; } ;
typedef TYPE_2__ stbi__huffman ;


 int FAST_BITS ;
 int STBI_ASSERT (int) ;
 int* stbi__bmask ;
 int stbi__grow_buffer_unsafe (TYPE_1__*) ;

__attribute__((used)) static int stbi__jpeg_huff_decode(stbi__jpeg *j, stbi__huffman *h)
{
   unsigned int temp;
   int c,k;

   if (j->code_bits < 16) stbi__grow_buffer_unsafe(j);



   c = (j->code_buffer >> (32 - FAST_BITS)) & ((1 << FAST_BITS)-1);
   k = h->fast[c];
   if (k < 255) {
      int s = h->size[k];
      if (s > j->code_bits)
         return -1;
      j->code_buffer <<= s;
      j->code_bits -= s;
      return h->values[k];
   }







   temp = j->code_buffer >> 16;
   for (k=FAST_BITS+1 ; ; ++k)
      if (temp < h->maxcode[k])
         break;
   if (k == 17) {

      j->code_bits -= 16;
      return -1;
   }

   if (k > j->code_bits)
      return -1;


   c = ((j->code_buffer >> (32 - k)) & stbi__bmask[k]) + h->delta[k];
   STBI_ASSERT((((j->code_buffer) >> (32 - h->size[c])) & stbi__bmask[h->size[c]]) == h->code[c]);


   j->code_bits -= k;
   j->code_buffer <<= k;
   return h->values[c];
}
