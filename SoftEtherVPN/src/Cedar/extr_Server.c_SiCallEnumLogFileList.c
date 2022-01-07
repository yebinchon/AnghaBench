
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;
typedef int RPC_ENUM_LOG_FILE ;
typedef int PACK ;
typedef int FARM_MEMBER ;


 int FreePack (int *) ;
 int FreeRpcEnumLogFile (int *) ;
 int InRpcEnumLogFile (int *,int *) ;
 int * NewPack () ;
 int OutRpcEnumLogFile (int *,int *) ;
 int PackAddStr (int *,char*,char*) ;
 int * SiCallTask (int *,int *,char*) ;
 int Zero (int *,int) ;

bool SiCallEnumLogFileList(SERVER *s, FARM_MEMBER *f, RPC_ENUM_LOG_FILE *t, char *hubname)
{
 PACK *p;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return 0;
 }

 p = NewPack();
 OutRpcEnumLogFile(p, t);
 FreeRpcEnumLogFile(t);
 Zero(t, sizeof(RPC_ENUM_LOG_FILE));

 PackAddStr(p, "HubName", hubname);

 p = SiCallTask(f, p, "enumlogfilelist");

 if (p == ((void*)0))
 {
  return 0;
 }

 InRpcEnumLogFile(t, p);
 FreePack(p);

 return 1;
}
