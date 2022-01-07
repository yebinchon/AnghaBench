
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AAS_FLOAT_FOR_BSP_EPAIR_KEY ;
 int syscall (int ,int,char*,float*) ;

int trap_AAS_FloatForBSPEpairKey(int ent, char *key, float *value) {
 return syscall( BOTLIB_AAS_FLOAT_FOR_BSP_EPAIR_KEY, ent, key, value );
}
