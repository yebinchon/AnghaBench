
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucvector ;
typedef int LodePNGDecompressSettings ;


 unsigned int inflateHuffmanBlock (int *,unsigned char const*,size_t*,size_t*,size_t,unsigned int) ;
 unsigned int inflateNoCompression (int *,unsigned char const*,size_t*,size_t*,size_t) ;
 int readBitFromStream (size_t*,unsigned char const*) ;
 int ucvector_resize (int *,size_t) ;

__attribute__((used)) static unsigned lodepng_inflatev(ucvector* out,
                                 const unsigned char* in, size_t insize,
                                 const LodePNGDecompressSettings* settings)
{

  size_t bp = 0;
  unsigned BFINAL = 0;
  size_t pos = 0;

  unsigned error = 0;

  (void)settings;

  while(!BFINAL)
  {
    unsigned BTYPE;
    if(bp + 2 >= insize * 8) return 52;
    BFINAL = readBitFromStream(&bp, in);
    BTYPE = 1 * readBitFromStream(&bp, in);
    BTYPE += 2 * readBitFromStream(&bp, in);

    if(BTYPE == 3) return 20;
    else if(BTYPE == 0) error = inflateNoCompression(out, in, &bp, &pos, insize);
    else error = inflateHuffmanBlock(out, in, &bp, &pos, insize, BTYPE);

    if(error) return error;
  }


  if(!ucvector_resize(out, pos)) error = 83;

  return error;
}
