
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_t {scalar_t__ numbits; int bits; } ;
struct huffman_decoder {int numcodes; int maxbits; int * lookup; struct node_t* huffnode; } ;
typedef int lookup_value ;


 int MAKE_LOOKUP (int,scalar_t__) ;

void huffman_build_lookup_table(struct huffman_decoder* decoder)
{

 int curcode;
 for (curcode = 0; curcode < decoder->numcodes; curcode++)
 {

  struct node_t* node = &decoder->huffnode[curcode];
  if (node->numbits > 0)
  {
         int shift;
         lookup_value *dest;
         lookup_value *destend;

   lookup_value value = MAKE_LOOKUP(curcode, node->numbits);


   shift = decoder->maxbits - node->numbits;
   dest = &decoder->lookup[node->bits << shift];
   destend = &decoder->lookup[((node->bits + 1) << shift) - 1];
   while (dest <= destend)
    *dest++ = value;
  }
 }
}
