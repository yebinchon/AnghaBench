
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HuffmanTree ;


 size_t* CLCL_ORDER ;
 int ERROR_BREAK (int) ;
 int HuffmanTree_cleanup (int *) ;
 int HuffmanTree_init (int *) ;
 unsigned int HuffmanTree_makeFromLengths (int *,unsigned int*,int,int) ;
 int NUM_CODE_LENGTH_CODES ;
 int NUM_DEFLATE_CODE_SYMBOLS ;
 int NUM_DISTANCE_SYMBOLS ;
 unsigned int huffmanDecodeSymbol (unsigned char const*,size_t*,int *,size_t) ;
 int lodepng_free (unsigned int*) ;
 scalar_t__ lodepng_malloc (int) ;
 unsigned int readBitsFromStream (size_t*,unsigned char const*,int) ;

__attribute__((used)) static unsigned getTreeInflateDynamic(HuffmanTree* tree_ll, HuffmanTree* tree_d,
                                      const unsigned char* in, size_t* bp, size_t inlength)
{

  unsigned error = 0;
  unsigned n, HLIT, HDIST, HCLEN, i;
  size_t inbitlength = inlength * 8;


  unsigned* bitlen_ll = 0;
  unsigned* bitlen_d = 0;

  unsigned* bitlen_cl = 0;
  HuffmanTree tree_cl;

  if((*bp) >> 3 >= inlength - 2) return 49;


  HLIT = readBitsFromStream(bp, in, 5) + 257;

  HDIST = readBitsFromStream(bp, in, 5) + 1;

  HCLEN = readBitsFromStream(bp, in, 4) + 4;

  HuffmanTree_init(&tree_cl);

  while(!error)
  {


    bitlen_cl = (unsigned*)lodepng_malloc(NUM_CODE_LENGTH_CODES * sizeof(unsigned));
    if(!bitlen_cl) ERROR_BREAK(83 );

    for(i = 0; i < NUM_CODE_LENGTH_CODES; i++)
    {
      if(i < HCLEN) bitlen_cl[CLCL_ORDER[i]] = readBitsFromStream(bp, in, 3);
      else bitlen_cl[CLCL_ORDER[i]] = 0;
    }

    error = HuffmanTree_makeFromLengths(&tree_cl, bitlen_cl, NUM_CODE_LENGTH_CODES, 7);
    if(error) break;


    bitlen_ll = (unsigned*)lodepng_malloc(NUM_DEFLATE_CODE_SYMBOLS * sizeof(unsigned));
    bitlen_d = (unsigned*)lodepng_malloc(NUM_DISTANCE_SYMBOLS * sizeof(unsigned));
    if(!bitlen_ll || !bitlen_d) ERROR_BREAK(83 );
    for(i = 0; i < NUM_DEFLATE_CODE_SYMBOLS; i++) bitlen_ll[i] = 0;
    for(i = 0; i < NUM_DISTANCE_SYMBOLS; i++) bitlen_d[i] = 0;


    i = 0;
    while(i < HLIT + HDIST)
    {
      unsigned code = huffmanDecodeSymbol(in, bp, &tree_cl, inbitlength);
      if(code <= 15)
      {
        if(i < HLIT) bitlen_ll[i] = code;
        else bitlen_d[i - HLIT] = code;
        i++;
      }
      else if(code == 16)
      {
        unsigned replength = 3;
        unsigned value;

        if(*bp >= inbitlength) ERROR_BREAK(50);
        if (i == 0) ERROR_BREAK(54);

        replength += readBitsFromStream(bp, in, 2);

        if(i < HLIT + 1) value = bitlen_ll[i - 1];
        else value = bitlen_d[i - HLIT - 1];

        for(n = 0; n < replength; n++)
        {
          if(i >= HLIT + HDIST) ERROR_BREAK(13);
          if(i < HLIT) bitlen_ll[i] = value;
          else bitlen_d[i - HLIT] = value;
          i++;
        }
      }
      else if(code == 17)
      {
        unsigned replength = 3;
        if(*bp >= inbitlength) ERROR_BREAK(50);

        replength += readBitsFromStream(bp, in, 3);


        for(n = 0; n < replength; n++)
        {
          if(i >= HLIT + HDIST) ERROR_BREAK(14);

          if(i < HLIT) bitlen_ll[i] = 0;
          else bitlen_d[i - HLIT] = 0;
          i++;
        }
      }
      else if(code == 18)
      {
        unsigned replength = 11;
        if(*bp >= inbitlength) ERROR_BREAK(50);

        replength += readBitsFromStream(bp, in, 7);


        for(n = 0; n < replength; n++)
        {
          if(i >= HLIT + HDIST) ERROR_BREAK(15);

          if(i < HLIT) bitlen_ll[i] = 0;
          else bitlen_d[i - HLIT] = 0;
          i++;
        }
      }
      else
      {
        if(code == (unsigned)(-1))
        {


          error = (*bp) > inbitlength ? 10 : 11;
        }
        else error = 16;
        break;
      }
    }
    if(error) break;

    if(bitlen_ll[256] == 0) ERROR_BREAK(64);


    error = HuffmanTree_makeFromLengths(tree_ll, bitlen_ll, NUM_DEFLATE_CODE_SYMBOLS, 15);
    if(error) break;
    error = HuffmanTree_makeFromLengths(tree_d, bitlen_d, NUM_DISTANCE_SYMBOLS, 15);

    break;
  }

  lodepng_free(bitlen_cl);
  lodepng_free(bitlen_ll);
  lodepng_free(bitlen_d);
  HuffmanTree_cleanup(&tree_cl);

  return error;
}
