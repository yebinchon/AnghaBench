
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct node_t {int numbits; scalar_t__ bits; } ;
struct huffman_decoder {int numcodes; int maxbits; struct node_t* huffnode; } ;
typedef enum huffman_error { ____Placeholder_huffman_error } huffman_error ;


 int HUFFERR_INTERNAL_INCONSISTENCY ;
 int HUFFERR_NONE ;

enum huffman_error huffman_assign_canonical_codes(struct huffman_decoder* decoder)
{
 uint32_t curstart = 0;

 int curcode, codelen;
 uint32_t bithisto[33] = { 0 };
 for (curcode = 0; curcode < decoder->numcodes; curcode++)
 {
  struct node_t* node = &decoder->huffnode[curcode];
  if (node->numbits > decoder->maxbits)
   return HUFFERR_INTERNAL_INCONSISTENCY;
  if (node->numbits <= 32)
   bithisto[node->numbits]++;
 }


 for (codelen = 32; codelen > 0; codelen--)
 {
  uint32_t nextstart = (curstart + bithisto[codelen]) >> 1;
  if (codelen != 1 && nextstart * 2 != (curstart + bithisto[codelen]))
   return HUFFERR_INTERNAL_INCONSISTENCY;
  bithisto[codelen] = curstart;
  curstart = nextstart;
 }


 for (curcode = 0; curcode < decoder->numcodes; curcode++)
 {
  struct node_t* node = &decoder->huffnode[curcode];
  if (node->numbits > 0)
   node->bits = bithisto[node->numbits]++;
 }
 return HUFFERR_NONE;
}
