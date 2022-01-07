
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char readBitFromReversedStream (size_t*,unsigned char const*) ;
 int setBitOfReversedStream (size_t*,unsigned char*,unsigned char) ;

__attribute__((used)) static void addPaddingBits(unsigned char* out, const unsigned char* in,
                           size_t olinebits, size_t ilinebits, unsigned h)
{


  unsigned y;
  size_t diff = olinebits - ilinebits;
  size_t obp = 0, ibp = 0;
  for(y = 0; y < h; y++)
  {
    size_t x;
    for(x = 0; x < ilinebits; x++)
    {
      unsigned char bit = readBitFromReversedStream(&ibp, in);
      setBitOfReversedStream(&obp, out, bit);
    }


    for(x = 0; x < diff; x++) setBitOfReversedStream(&obp, out, 0);
  }
}
