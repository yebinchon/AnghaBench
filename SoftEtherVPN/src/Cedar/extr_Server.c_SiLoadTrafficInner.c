
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* UnicastBytes; void* UnicastCount; void* BroadcastBytes; void* BroadcastCount; } ;
typedef TYPE_1__ TRAFFIC_ENTRY ;
typedef int FOLDER ;


 int * CfgGetFolder (int *,char*) ;
 void* CfgGetInt64 (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void SiLoadTrafficInner(FOLDER *parent, char *name, TRAFFIC_ENTRY *e)
{
 FOLDER *f;

 if (e != ((void*)0))
 {
  Zero(e, sizeof(TRAFFIC_ENTRY));
 }
 if (parent == ((void*)0) || name == ((void*)0) || e == ((void*)0))
 {
  return;
 }

 f = CfgGetFolder(parent, name);
 if (f == ((void*)0))
 {
  return;
 }

 e->BroadcastCount = CfgGetInt64(f, "BroadcastCount");
 e->BroadcastBytes = CfgGetInt64(f, "BroadcastBytes");
 e->UnicastCount = CfgGetInt64(f, "UnicastCount");
 e->UnicastBytes = CfgGetInt64(f, "UnicastBytes");
}
