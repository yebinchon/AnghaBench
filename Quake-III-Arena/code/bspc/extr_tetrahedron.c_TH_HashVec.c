
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;


 int Error (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int MAX_MAP_BOUNDS ;
 int VERTEXHASH_SHIFT ;
 int VERTEXHASH_SIZE ;

unsigned TH_HashVec(vec3_t vec)
{
 int x, y;

 x = (MAX_MAP_BOUNDS + (int)(vec[0]+0.5)) >> VERTEXHASH_SHIFT;
 y = (MAX_MAP_BOUNDS + (int)(vec[1]+0.5)) >> VERTEXHASH_SHIFT;

 if (x < 0 || x >= VERTEXHASH_SIZE || y < 0 || y >= VERTEXHASH_SIZE)
  Error("HashVec: point %f %f %f outside valid range", vec[0], vec[1], vec[2]);

 return y*VERTEXHASH_SIZE + x;
}
