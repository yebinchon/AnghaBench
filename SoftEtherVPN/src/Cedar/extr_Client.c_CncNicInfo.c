
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* NicName; int AccountName; } ;
typedef TYPE_1__ UI_NICINFO ;
typedef int SOCK ;
typedef int PACK ;


 int * CncConnectEx (int) ;
 int FreePack (int *) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,char*) ;
 int PackAddUniStr (int *,char*,int ) ;
 int SendPack (int *,int *) ;

SOCK *CncNicInfo(UI_NICINFO *info)
{
 SOCK *s;
 PACK *p;

 if (info == ((void*)0))
 {
  return ((void*)0);
 }

 s = CncConnectEx(200);
 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();
 PackAddStr(p, "function", "nicinfo");
 PackAddStr(p, "NicName", info->NicName);
 PackAddUniStr(p, "AccountName", info->AccountName);

 SendPack(s, p);
 FreePack(p);

 return s;
}
