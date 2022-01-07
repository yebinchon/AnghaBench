
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int maxbitlen; unsigned int numcodes; unsigned int* lengths; } ;
typedef TYPE_1__ HuffmanTree ;


 unsigned int HuffmanTree_makeFromLengths2 (TYPE_1__*) ;
 unsigned int lodepng_huffman_code_lengths (unsigned int*,unsigned int const*,size_t,unsigned int) ;
 scalar_t__ lodepng_realloc (unsigned int*,size_t) ;
 int memset (unsigned int*,int ,size_t) ;

__attribute__((used)) static unsigned HuffmanTree_makeFromFrequencies(HuffmanTree* tree, const unsigned* frequencies,
                                                size_t mincodes, size_t numcodes, unsigned maxbitlen)
{
  unsigned error = 0;
  while(!frequencies[numcodes - 1] && numcodes > mincodes) numcodes--;
  tree->maxbitlen = maxbitlen;
  tree->numcodes = (unsigned)numcodes;
  tree->lengths = (unsigned*)lodepng_realloc(tree->lengths, numcodes * sizeof(unsigned));
  if(!tree->lengths) return 83;

  memset(tree->lengths, 0, numcodes * sizeof(unsigned));

  error = lodepng_huffman_code_lengths(tree->lengths, frequencies, numcodes, maxbitlen);
  if(!error) error = HuffmanTree_makeFromLengths2(tree);
  return error;
}
