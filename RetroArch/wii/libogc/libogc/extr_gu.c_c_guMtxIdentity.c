
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef double** Mtx ;



void c_guMtxIdentity(Mtx mt)
{
 s32 i,j;

 for(i=0;i<3;i++) {
  for(j=0;j<4;j++) {
   if(i==j) mt[i][j] = 1.0;
   else mt[i][j] = 0.0;
  }
 }
}
