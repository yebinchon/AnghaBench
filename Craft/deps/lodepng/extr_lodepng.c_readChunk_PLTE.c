
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* palette; size_t palettesize; } ;
typedef TYPE_1__ LodePNGColorMode ;


 int lodepng_free (unsigned char*) ;
 scalar_t__ lodepng_malloc (int) ;

__attribute__((used)) static unsigned readChunk_PLTE(LodePNGColorMode* color, const unsigned char* data, size_t chunkLength)
{
  unsigned pos = 0, i;
  if(color->palette) lodepng_free(color->palette);
  color->palettesize = chunkLength / 3;
  color->palette = (unsigned char*)lodepng_malloc(4 * color->palettesize);
  if(!color->palette && color->palettesize)
  {
    color->palettesize = 0;
    return 83;
  }
  if(color->palettesize > 256) return 38;

  for(i = 0; i < color->palettesize; i++)
  {
    color->palette[4 * i + 0] = data[pos++];
    color->palette[4 * i + 1] = data[pos++];
    color->palette[4 * i + 2] = data[pos++];
    color->palette[4 * i + 3] = 255;
  }

  return 0;
}
