
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float sqrtf (float) ;

__attribute__((used)) static void renormalise(float *verts, int numvertices)
{
   int i;
   float *v = verts;
   for (i=0;i<numvertices; i++) {
      float x = v[0];
      float y = v[1];
      float z = v[2];
      float scale = 1.0f/sqrtf(x*x + y*y + z*z);
      *v++ = x * scale;
      *v++ = y * scale;
      *v++ = z * scale;
   }
}
