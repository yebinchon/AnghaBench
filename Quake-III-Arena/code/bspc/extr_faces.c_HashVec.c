
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;


 int Error (char*) ;
 int HASH_SIZE ;

unsigned HashVec (vec3_t vec)
{
 int x, y;

 x = (4096 + (int)(vec[0]+0.5)) >> 7;
 y = (4096 + (int)(vec[1]+0.5)) >> 7;

 if ( x < 0 || x >= HASH_SIZE || y < 0 || y >= HASH_SIZE )
  Error ("HashVec: point outside valid range");

 return y*HASH_SIZE + x;
}
