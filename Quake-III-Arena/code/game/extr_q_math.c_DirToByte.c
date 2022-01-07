
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 float DotProduct (int ,int ) ;
 int NUMVERTEXNORMALS ;
 int * bytedirs ;

int DirToByte( vec3_t dir ) {
 int i, best;
 float d, bestd;

 if ( !dir ) {
  return 0;
 }

 bestd = 0;
 best = 0;
 for (i=0 ; i<NUMVERTEXNORMALS ; i++)
 {
  d = DotProduct (dir, bytedirs[i]);
  if (d > bestd)
  {
   bestd = d;
   best = i;
  }
 }

 return best;
}
