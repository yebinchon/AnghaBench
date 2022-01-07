
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int assert (int) ;

void
_mesa_upscale_teximage2d (unsigned int inWidth, unsigned int inHeight,
     unsigned int outWidth, unsigned int outHeight,
     unsigned int comps,
     const byte *src, int srcRowStride,
     byte *dest)
{
    unsigned int i, j, k;

    assert(outWidth >= inWidth);
    assert(outHeight >= inHeight);


  for (i = 0; i < inHeight; i++) {
    for (j = 0; j < inWidth; j++) {
      const int aa = (i * outWidth + j) * comps;
      const int bb = i * srcRowStride + j * comps;
      for (k = 0; k < comps; k++) {
        dest[aa + k] = src[bb + k];
      }
    }
    for (; j < outWidth; j++) {
      const int aa = (i * outWidth + j) * comps;
      const int bb = i * srcRowStride + (j - inWidth) * comps;
      for (k = 0; k < comps; k++) {
        dest[aa + k] = src[bb + k];
      }
    }
  }
  for (; i < outHeight; i++) {
    for (j = 0; j < inWidth; j++) {
      const int aa = (i * outWidth + j) * comps;
      const int bb = (i - inHeight) * srcRowStride + j * comps;
      for (k = 0; k < comps; k++) {
        dest[aa + k] = src[bb + k];
      }
    }
    for (; j < outWidth; j++) {
      const int aa = (i * outWidth + j) * comps;
      const int bb = (i - inHeight) * srcRowStride + (j - inWidth) * comps;
      for (k = 0; k < comps; k++) {
        dest[aa + k] = src[bb + k];
      }
    }
  }
}
