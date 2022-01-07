
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int connectedareas ;


 int AAS_ConnectedAreas_r (int*,int,int*,int ) ;
 int Com_Memset (int*,int ,int) ;
 int MAX_PORTALAREAS ;
 int qfalse ;
 int qtrue ;

qboolean AAS_ConnectedAreas(int *areanums, int numareas)
{
 int connectedareas[MAX_PORTALAREAS], i;

 Com_Memset(connectedareas, 0, sizeof(connectedareas));
 if (numareas < 1) return qfalse;
 if (numareas == 1) return qtrue;
 AAS_ConnectedAreas_r(areanums, numareas, connectedareas, 0);
 for (i = 0; i < numareas; i++)
 {
  if (!connectedareas[i]) return qfalse;
 }
 return qtrue;
}
