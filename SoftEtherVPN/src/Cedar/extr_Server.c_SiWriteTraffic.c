
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Recv; int Send; } ;
typedef TYPE_1__ TRAFFIC ;
typedef int FOLDER ;


 int * CfgCreateFolder (int *,char*) ;
 int SiWriteTrafficInner (int *,char*,int *) ;

void SiWriteTraffic(FOLDER *parent, char *name, TRAFFIC *t)
{
 FOLDER *f;

 if (parent == ((void*)0) || name == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 f = CfgCreateFolder(parent, name);

 SiWriteTrafficInner(f, "SendTraffic", &t->Send);
 SiWriteTrafficInner(f, "RecvTraffic", &t->Recv);
}
