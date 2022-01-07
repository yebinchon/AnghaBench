
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;


 int AAS_PointContents (int*) ;
 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int CONTENTS_WATER ;
 int VectorCopy (int*,int*) ;
 int qfalse ;
 int qtrue ;

int AAS_Swimming(vec3_t origin)
{
 vec3_t testorg;

 VectorCopy(origin, testorg);
 testorg[2] -= 2;
 if (AAS_PointContents(testorg) & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER)) return qtrue;
 return qfalse;
}
