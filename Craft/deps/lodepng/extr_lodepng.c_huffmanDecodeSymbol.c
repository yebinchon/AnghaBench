
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* tree2d; unsigned int numcodes; } ;
typedef TYPE_1__ HuffmanTree ;


 unsigned int READBIT (size_t,unsigned char const*) ;

__attribute__((used)) static unsigned huffmanDecodeSymbol(const unsigned char* in, size_t* bp,
                                    const HuffmanTree* codetree, size_t inbitlength)
{
  unsigned treepos = 0, ct;
  for(;;)
  {
    if(*bp >= inbitlength) return (unsigned)(-1);




    ct = codetree->tree2d[(treepos << 1) + READBIT(*bp, in)];
    (*bp)++;
    if(ct < codetree->numcodes) return ct;
    else treepos = ct - codetree->numcodes;

    if(treepos >= codetree->numcodes) return (unsigned)(-1);
  }
}
