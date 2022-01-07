
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* data; } ;
typedef TYPE_1__ uivector ;
struct TYPE_9__ {unsigned int* tree1d; int numcodes; int maxbitlen; size_t* lengths; } ;
typedef TYPE_2__ HuffmanTree ;


 int HuffmanTree_make2DTree (TYPE_2__*) ;
 scalar_t__ lodepng_malloc (int) ;
 int uivector_cleanup (TYPE_1__*) ;
 int uivector_init (TYPE_1__*) ;
 int uivector_resizev (TYPE_1__*,int,int ) ;

__attribute__((used)) static unsigned HuffmanTree_makeFromLengths2(HuffmanTree* tree)
{
  uivector blcount;
  uivector nextcode;
  unsigned bits, n, error = 0;

  uivector_init(&blcount);
  uivector_init(&nextcode);

  tree->tree1d = (unsigned*)lodepng_malloc(tree->numcodes * sizeof(unsigned));
  if(!tree->tree1d) error = 83;

  if(!uivector_resizev(&blcount, tree->maxbitlen + 1, 0)
  || !uivector_resizev(&nextcode, tree->maxbitlen + 1, 0))
    error = 83;

  if(!error)
  {

    for(bits = 0; bits < tree->numcodes; bits++) blcount.data[tree->lengths[bits]]++;

    for(bits = 1; bits <= tree->maxbitlen; bits++)
    {
      nextcode.data[bits] = (nextcode.data[bits - 1] + blcount.data[bits - 1]) << 1;
    }

    for(n = 0; n < tree->numcodes; n++)
    {
      if(tree->lengths[n] != 0) tree->tree1d[n] = nextcode.data[tree->lengths[n]]++;
    }
  }

  uivector_cleanup(&blcount);
  uivector_cleanup(&nextcode);

  if(!error) return HuffmanTree_make2DTree(tree);
  else return error;
}
