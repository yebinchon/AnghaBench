
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int Traffic; int * Policy; int Note; int RealName; } ;
typedef TYPE_1__ USERGROUP ;
typedef int FOLDER ;


 int CfgAddUniStr (int *,char*,int ) ;
 int CfgCreateFolder (int *,char*) ;
 int Lock (int ) ;
 int SiWritePolicyCfg (int ,int *,int) ;
 int SiWriteTraffic (int *,char*,int ) ;
 int Unlock (int ) ;

void SiWriteGroupCfg(FOLDER *f, USERGROUP *g)
{

 if (f == ((void*)0) || g == ((void*)0))
 {
  return;
 }

 Lock(g->lock);
 {
  CfgAddUniStr(f, "RealName", g->RealName);
  CfgAddUniStr(f, "Note", g->Note);
  if (g->Policy != ((void*)0))
  {
   SiWritePolicyCfg(CfgCreateFolder(f, "Policy"), g->Policy, 0);
  }
  SiWriteTraffic(f, "Traffic", g->Traffic);
 }
 Unlock(g->lock);
}
