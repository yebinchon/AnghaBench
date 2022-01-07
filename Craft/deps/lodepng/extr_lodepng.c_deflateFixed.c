
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uivector ;
typedef int ucvector ;
struct TYPE_3__ {int lazymatching; int nicematch; int minmatch; int windowsize; scalar_t__ use_lz77; } ;
typedef TYPE_1__ LodePNGCompressSettings ;
typedef int HuffmanTree ;
typedef int Hash ;


 int HuffmanTree_cleanup (int *) ;
 int HuffmanTree_getCode (int *,unsigned char const) ;
 int HuffmanTree_getLength (int *,unsigned char const) ;
 int HuffmanTree_init (int *) ;
 int addBitToStream (size_t*,int *,int) ;
 int addHuffmanSymbol (size_t*,int *,int ,int ) ;
 unsigned int encodeLZ77 (int *,int *,unsigned char const*,size_t,size_t,int ,int ,int ,int ) ;
 int generateFixedDistanceTree (int *) ;
 int generateFixedLitLenTree (int *) ;
 int uivector_cleanup (int *) ;
 int uivector_init (int *) ;
 int writeLZ77data (size_t*,int *,int *,int *,int *) ;

__attribute__((used)) static unsigned deflateFixed(ucvector* out, size_t* bp, Hash* hash,
                             const unsigned char* data,
                             size_t datapos, size_t dataend,
                             const LodePNGCompressSettings* settings, int final)
{
  HuffmanTree tree_ll;
  HuffmanTree tree_d;

  unsigned BFINAL = final;
  unsigned error = 0;
  size_t i;

  HuffmanTree_init(&tree_ll);
  HuffmanTree_init(&tree_d);

  generateFixedLitLenTree(&tree_ll);
  generateFixedDistanceTree(&tree_d);

  addBitToStream(bp, out, BFINAL);
  addBitToStream(bp, out, 1);
  addBitToStream(bp, out, 0);

  if(settings->use_lz77)
  {
    uivector lz77_encoded;
    uivector_init(&lz77_encoded);
    error = encodeLZ77(&lz77_encoded, hash, data, datapos, dataend, settings->windowsize,
                       settings->minmatch, settings->nicematch, settings->lazymatching);
    if(!error) writeLZ77data(bp, out, &lz77_encoded, &tree_ll, &tree_d);
    uivector_cleanup(&lz77_encoded);
  }
  else
  {
    for(i = datapos; i < dataend; i++)
    {
      addHuffmanSymbol(bp, out, HuffmanTree_getCode(&tree_ll, data[i]), HuffmanTree_getLength(&tree_ll, data[i]));
    }
  }

  if(!error) addHuffmanSymbol(bp, out, HuffmanTree_getCode(&tree_ll, 256), HuffmanTree_getLength(&tree_ll, 256));


  HuffmanTree_cleanup(&tree_ll);
  HuffmanTree_cleanup(&tree_d);

  return error;
}
