
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Recv; int Send; } ;
typedef TYPE_1__ TRAFFIC ;
typedef int FOLDER ;


 int * CfgGetFolder (int *,char*) ;
 int SiLoadTrafficInner (int *,char*,int *) ;
 int Zero (TYPE_1__*,int) ;

void SiLoadTraffic(FOLDER *parent, char *name, TRAFFIC *t)
{
 FOLDER *f;

 if (t != ((void*)0))
 {
  Zero(t, sizeof(TRAFFIC));
 }
 if (parent == ((void*)0) || name == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 f = CfgGetFolder(parent, name);

 if (f == ((void*)0))
 {
  return;
 }

 SiLoadTrafficInner(f, "SendTraffic", &t->Send);
 SiLoadTrafficInner(f, "RecvTraffic", &t->Recv);
}
