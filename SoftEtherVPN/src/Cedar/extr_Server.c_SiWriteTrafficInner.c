
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int UnicastBytes; int UnicastCount; int BroadcastBytes; int BroadcastCount; } ;
typedef TYPE_1__ TRAFFIC_ENTRY ;
typedef int FOLDER ;


 int CfgAddInt64 (int *,char*,int ) ;
 int * CfgCreateFolder (int *,char*) ;

void SiWriteTrafficInner(FOLDER *parent, char *name, TRAFFIC_ENTRY *e)
{
 FOLDER *f;

 if (parent == ((void*)0) || name == ((void*)0) || e == ((void*)0))
 {
  return;
 }

 f = CfgCreateFolder(parent, name);
 CfgAddInt64(f, "BroadcastCount", e->BroadcastCount);
 CfgAddInt64(f, "BroadcastBytes", e->BroadcastBytes);
 CfgAddInt64(f, "UnicastCount", e->UnicastCount);
 CfgAddInt64(f, "UnicastBytes", e->UnicastBytes);
}
