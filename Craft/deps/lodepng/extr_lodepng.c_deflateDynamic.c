
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {unsigned char* data; size_t size; } ;
typedef TYPE_1__ uivector ;
typedef int ucvector ;
struct TYPE_21__ {size_t numcodes; } ;
struct TYPE_20__ {int lazymatching; int nicematch; int minmatch; int windowsize; scalar_t__ use_lz77; } ;
typedef TYPE_2__ LodePNGCompressSettings ;
typedef TYPE_3__ HuffmanTree ;
typedef int Hash ;


 int* CLCL_ORDER ;
 int ERROR_BREAK (int) ;
 int HuffmanTree_cleanup (TYPE_3__*) ;
 int HuffmanTree_getCode (TYPE_3__*,int) ;
 scalar_t__ HuffmanTree_getLength (TYPE_3__*,int) ;
 int HuffmanTree_init (TYPE_3__*) ;
 unsigned int HuffmanTree_makeFromFrequencies (TYPE_3__*,int*,int,size_t,int) ;
 int NUM_CODE_LENGTH_CODES ;
 int addBitToStream (size_t*,int *,int) ;
 int addBitsToStream (size_t*,int *,unsigned int,int) ;
 int addHuffmanSymbol (size_t*,int *,int ,scalar_t__) ;
 unsigned int encodeLZ77 (TYPE_1__*,int *,unsigned char const*,size_t,size_t,int ,int ,int ,int ) ;
 int uivector_cleanup (TYPE_1__*) ;
 int uivector_init (TYPE_1__*) ;
 int uivector_push_back (TYPE_1__*,unsigned int) ;
 int uivector_resize (TYPE_1__*,int) ;
 int uivector_resizev (TYPE_1__*,int,int ) ;
 int writeLZ77data (size_t*,int *,TYPE_1__*,TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static unsigned deflateDynamic(ucvector* out, size_t* bp, Hash* hash,
                               const unsigned char* data, size_t datapos, size_t dataend,
                               const LodePNGCompressSettings* settings, int final)
{
  unsigned error = 0;
  uivector lz77_encoded;
  HuffmanTree tree_ll;
  HuffmanTree tree_d;
  HuffmanTree tree_cl;
  uivector frequencies_ll;
  uivector frequencies_d;
  uivector frequencies_cl;
  uivector bitlen_lld;
  uivector bitlen_lld_e;



  uivector bitlen_cl;
  size_t datasize = dataend - datapos;
  unsigned BFINAL = final;
  size_t numcodes_ll, numcodes_d, i;
  unsigned HLIT, HDIST, HCLEN;

  uivector_init(&lz77_encoded);
  HuffmanTree_init(&tree_ll);
  HuffmanTree_init(&tree_d);
  HuffmanTree_init(&tree_cl);
  uivector_init(&frequencies_ll);
  uivector_init(&frequencies_d);
  uivector_init(&frequencies_cl);
  uivector_init(&bitlen_lld);
  uivector_init(&bitlen_lld_e);
  uivector_init(&bitlen_cl);



  while(!error)
  {
    if(settings->use_lz77)
    {
      error = encodeLZ77(&lz77_encoded, hash, data, datapos, dataend, settings->windowsize,
                         settings->minmatch, settings->nicematch, settings->lazymatching);
      if(error) break;
    }
    else
    {
      if(!uivector_resize(&lz77_encoded, datasize)) ERROR_BREAK(83 );
      for(i = datapos; i < dataend; i++) lz77_encoded.data[i] = data[i];
    }

    if(!uivector_resizev(&frequencies_ll, 286, 0)) ERROR_BREAK(83 );
    if(!uivector_resizev(&frequencies_d, 30, 0)) ERROR_BREAK(83 );


    for(i = 0; i < lz77_encoded.size; i++)
    {
      unsigned symbol = lz77_encoded.data[i];
      frequencies_ll.data[symbol]++;
      if(symbol > 256)
      {
        unsigned dist = lz77_encoded.data[i + 2];
        frequencies_d.data[dist]++;
        i += 3;
      }
    }
    frequencies_ll.data[256] = 1;


    error = HuffmanTree_makeFromFrequencies(&tree_ll, frequencies_ll.data, 257, frequencies_ll.size, 15);
    if(error) break;

    error = HuffmanTree_makeFromFrequencies(&tree_d, frequencies_d.data, 2, frequencies_d.size, 15);
    if(error) break;

    numcodes_ll = tree_ll.numcodes; if(numcodes_ll > 286) numcodes_ll = 286;
    numcodes_d = tree_d.numcodes; if(numcodes_d > 30) numcodes_d = 30;

    for(i = 0; i < numcodes_ll; i++) uivector_push_back(&bitlen_lld, HuffmanTree_getLength(&tree_ll, (unsigned)i));
    for(i = 0; i < numcodes_d; i++) uivector_push_back(&bitlen_lld, HuffmanTree_getLength(&tree_d, (unsigned)i));



    for(i = 0; i < (unsigned)bitlen_lld.size; i++)
    {
      unsigned j = 0;
      while(i + j + 1 < (unsigned)bitlen_lld.size && bitlen_lld.data[i + j + 1] == bitlen_lld.data[i]) j++;

      if(bitlen_lld.data[i] == 0 && j >= 2)
      {
        j++;
        if(j <= 10)
        {
          uivector_push_back(&bitlen_lld_e, 17);
          uivector_push_back(&bitlen_lld_e, j - 3);
        }
        else
        {
          if(j > 138) j = 138;
          uivector_push_back(&bitlen_lld_e, 18);
          uivector_push_back(&bitlen_lld_e, j - 11);
        }
        i += (j - 1);
      }
      else if(j >= 3)
      {
        size_t k;
        unsigned num = j / 6, rest = j % 6;
        uivector_push_back(&bitlen_lld_e, bitlen_lld.data[i]);
        for(k = 0; k < num; k++)
        {
          uivector_push_back(&bitlen_lld_e, 16);
          uivector_push_back(&bitlen_lld_e, 6 - 3);
        }
        if(rest >= 3)
        {
          uivector_push_back(&bitlen_lld_e, 16);
          uivector_push_back(&bitlen_lld_e, rest - 3);
        }
        else j -= rest;
        i += j;
      }
      else
      {
        uivector_push_back(&bitlen_lld_e, bitlen_lld.data[i]);
      }
    }



    if(!uivector_resizev(&frequencies_cl, NUM_CODE_LENGTH_CODES, 0)) ERROR_BREAK(83 );
    for(i = 0; i < bitlen_lld_e.size; i++)
    {
      frequencies_cl.data[bitlen_lld_e.data[i]]++;


      if(bitlen_lld_e.data[i] >= 16) i++;
    }

    error = HuffmanTree_makeFromFrequencies(&tree_cl, frequencies_cl.data,
                                            frequencies_cl.size, frequencies_cl.size, 7);
    if(error) break;

    if(!uivector_resize(&bitlen_cl, tree_cl.numcodes)) ERROR_BREAK(83 );
    for(i = 0; i < tree_cl.numcodes; i++)
    {

      bitlen_cl.data[i] = HuffmanTree_getLength(&tree_cl, CLCL_ORDER[i]);
    }
    while(bitlen_cl.data[bitlen_cl.size - 1] == 0 && bitlen_cl.size > 4)
    {

      if(!uivector_resize(&bitlen_cl, bitlen_cl.size - 1)) ERROR_BREAK(83 );
    }
    if(error) break;
    addBitToStream(bp, out, BFINAL);
    addBitToStream(bp, out, 0);
    addBitToStream(bp, out, 1);


    HLIT = (unsigned)(numcodes_ll - 257);
    HDIST = (unsigned)(numcodes_d - 1);
    HCLEN = (unsigned)bitlen_cl.size - 4;

    while(!bitlen_cl.data[HCLEN + 4 - 1] && HCLEN > 0) HCLEN--;
    addBitsToStream(bp, out, HLIT, 5);
    addBitsToStream(bp, out, HDIST, 5);
    addBitsToStream(bp, out, HCLEN, 4);


    for(i = 0; i < HCLEN + 4; i++) addBitsToStream(bp, out, bitlen_cl.data[i], 3);


    for(i = 0; i < bitlen_lld_e.size; i++)
    {
      addHuffmanSymbol(bp, out, HuffmanTree_getCode(&tree_cl, bitlen_lld_e.data[i]),
                       HuffmanTree_getLength(&tree_cl, bitlen_lld_e.data[i]));

      if(bitlen_lld_e.data[i] == 16) addBitsToStream(bp, out, bitlen_lld_e.data[++i], 2);
      else if(bitlen_lld_e.data[i] == 17) addBitsToStream(bp, out, bitlen_lld_e.data[++i], 3);
      else if(bitlen_lld_e.data[i] == 18) addBitsToStream(bp, out, bitlen_lld_e.data[++i], 7);
    }


    writeLZ77data(bp, out, &lz77_encoded, &tree_ll, &tree_d);

    if(HuffmanTree_getLength(&tree_ll, 256) == 0) ERROR_BREAK(64);


    addHuffmanSymbol(bp, out, HuffmanTree_getCode(&tree_ll, 256), HuffmanTree_getLength(&tree_ll, 256));

    break;
  }


  uivector_cleanup(&lz77_encoded);
  HuffmanTree_cleanup(&tree_ll);
  HuffmanTree_cleanup(&tree_d);
  HuffmanTree_cleanup(&tree_cl);
  uivector_cleanup(&frequencies_ll);
  uivector_cleanup(&frequencies_d);
  uivector_cleanup(&frequencies_cl);
  uivector_cleanup(&bitlen_lld_e);
  uivector_cleanup(&bitlen_lld);
  uivector_cleanup(&bitlen_cl);

  return error;
}
