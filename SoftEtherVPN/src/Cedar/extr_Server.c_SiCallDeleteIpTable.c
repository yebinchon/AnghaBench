
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SERVER ;
typedef int PACK ;
typedef int FARM_MEMBER ;


 int FreePack (int *) ;
 int * NewPack () ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;
 int * SiCallTask (int *,int *,char*) ;

void SiCallDeleteIpTable(SERVER *s, FARM_MEMBER *f, char *hubname, UINT key)
{
 PACK *p;

 if (s == ((void*)0) || f == ((void*)0) || hubname == ((void*)0))
 {
  return;
 }

 p = NewPack();
 PackAddStr(p, "HubName", hubname);
 PackAddInt(p, "Key", key);

 p = SiCallTask(f, p, "deleteiptable");

 FreePack(p);
}
