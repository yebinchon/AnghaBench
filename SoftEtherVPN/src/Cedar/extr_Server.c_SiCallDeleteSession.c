
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;
typedef int PACK ;
typedef int FARM_MEMBER ;


 int FreePack (int *) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,char*) ;
 int * SiCallTask (int *,int *,char*) ;

void SiCallDeleteSession(SERVER *s, FARM_MEMBER *f, char *hubname, char *session_name)
{
 PACK *p;

 if (s == ((void*)0) || f == ((void*)0) || hubname == ((void*)0) || session_name == ((void*)0))
 {
  return;
 }

 p = NewPack();
 PackAddStr(p, "HubName", hubname);
 PackAddStr(p, "SessionName", session_name);

 p = SiCallTask(f, p, "deletesession");

 FreePack(p);
}
