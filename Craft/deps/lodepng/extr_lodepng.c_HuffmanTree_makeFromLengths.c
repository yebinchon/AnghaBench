
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* lengths; unsigned int numcodes; unsigned int maxbitlen; } ;
typedef TYPE_1__ HuffmanTree ;


 int HuffmanTree_makeFromLengths2 (TYPE_1__*) ;
 scalar_t__ lodepng_malloc (size_t) ;

__attribute__((used)) static unsigned HuffmanTree_makeFromLengths(HuffmanTree* tree, const unsigned* bitlen,
                                            size_t numcodes, unsigned maxbitlen)
{
  unsigned i;
  tree->lengths = (unsigned*)lodepng_malloc(numcodes * sizeof(unsigned));
  if(!tree->lengths) return 83;
  for(i = 0; i < numcodes; i++) tree->lengths[i] = bitlen[i];
  tree->numcodes = (unsigned)numcodes;
  tree->maxbitlen = maxbitlen;
  return HuffmanTree_makeFromLengths2(tree);
}
