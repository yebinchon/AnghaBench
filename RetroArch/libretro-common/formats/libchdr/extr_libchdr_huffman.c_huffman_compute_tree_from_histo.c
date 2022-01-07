
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct huffman_decoder {int numcodes; int maxbits; scalar_t__* datahisto; } ;
typedef enum huffman_error { ____Placeholder_huffman_error } huffman_error ;


 int huffman_assign_canonical_codes (struct huffman_decoder*) ;
 int huffman_build_tree (struct huffman_decoder*,int,int) ;

enum huffman_error huffman_compute_tree_from_histo(struct huffman_decoder* decoder)
{

 int i;
   uint32_t upperweight;
 uint32_t lowerweight = 0;
 uint32_t sdatacount = 0;
 for (i = 0; i < decoder->numcodes; i++)
  sdatacount += decoder->datahisto[i];


 upperweight = sdatacount * 2;
 while (1)
 {

  uint32_t curweight = (upperweight + lowerweight) / 2;
  int curmaxbits = huffman_build_tree(decoder, sdatacount, curweight);


  if (curmaxbits <= decoder->maxbits)
  {
   lowerweight = curweight;


   if (curweight == sdatacount || (upperweight - lowerweight) <= 1)
    break;
  }
  else
   upperweight = curweight;
 }


 return huffman_assign_canonical_codes(decoder);
}
