
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* tree2d; int numcodes; unsigned int* lengths; unsigned int* tree1d; } ;
typedef TYPE_1__ HuffmanTree ;


 scalar_t__ lodepng_malloc (int) ;

__attribute__((used)) static unsigned HuffmanTree_make2DTree(HuffmanTree* tree)
{
  unsigned nodefilled = 0;
  unsigned treepos = 0;
  unsigned n, i;

  tree->tree2d = (unsigned*)lodepng_malloc(tree->numcodes * 2 * sizeof(unsigned));
  if(!tree->tree2d) return 83;
  for(n = 0; n < tree->numcodes * 2; n++)
  {
    tree->tree2d[n] = 32767;
  }

  for(n = 0; n < tree->numcodes; n++)
  {
    for(i = 0; i < tree->lengths[n]; i++)
    {
      unsigned char bit = (unsigned char)((tree->tree1d[n] >> (tree->lengths[n] - i - 1)) & 1);
      if(treepos > tree->numcodes - 2) return 55;
      if(tree->tree2d[2 * treepos + bit] == 32767)
      {
        if(i + 1 == tree->lengths[n])
        {
          tree->tree2d[2 * treepos + bit] = n;
          treepos = 0;
        }
        else
        {


          nodefilled++;

          tree->tree2d[2 * treepos + bit] = nodefilled + tree->numcodes;
          treepos = nodefilled;
        }
      }
      else treepos = tree->tree2d[2 * treepos + bit] - tree->numcodes;
    }
  }

  for(n = 0; n < tree->numcodes * 2; n++)
  {
    if(tree->tree2d[n] == 32767) tree->tree2d[n] = 0;
  }

  return 0;
}
