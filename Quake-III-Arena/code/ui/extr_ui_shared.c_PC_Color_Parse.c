
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec4_t ;
typedef int qboolean ;


 int PC_Float_Parse (int,float*) ;
 int qfalse ;
 int qtrue ;

qboolean PC_Color_Parse(int handle, vec4_t *c) {
 int i;
 float f;

 for (i = 0; i < 4; i++) {
  if (!PC_Float_Parse(handle, &f)) {
   return qfalse;
  }
  (*c)[i] = f;
 }
 return qtrue;
}
