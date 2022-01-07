
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLsizei ;



__attribute__((used)) static void deindex(float *dst, const float *src, const unsigned short *indexes, GLsizei size, GLsizei count)
{
   int i;
   for (i=0; i<count; i++) {
      int ind = size * (indexes[0]-1);
      *dst++ = src[ind + 0];
      *dst++ = src[ind + 1];

      if (size >= 3) *dst++ = src[ind + 2];
      indexes += 3;
   }
}
