
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AAS_VECTOR_FOR_BSP_EPAIR_KEY ;
 int syscall (int ,int,char*,int ) ;

int trap_AAS_VectorForBSPEpairKey(int ent, char *key, vec3_t v) {
 return syscall( BOTLIB_AAS_VECTOR_FOR_BSP_EPAIR_KEY, ent, key, v );
}
