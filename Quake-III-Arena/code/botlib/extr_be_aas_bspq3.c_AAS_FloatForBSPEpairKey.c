
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AAS_ValueForBSPEpairKey (int,char*,char*,int) ;
 int MAX_EPAIRKEY ;
 float atof (char*) ;
 int qfalse ;
 int qtrue ;

int AAS_FloatForBSPEpairKey(int ent, char *key, float *value)
{
 char buf[MAX_EPAIRKEY];

 *value = 0;
 if (!AAS_ValueForBSPEpairKey(ent, key, buf, MAX_EPAIRKEY)) return qfalse;
 *value = atof(buf);
 return qtrue;
}
