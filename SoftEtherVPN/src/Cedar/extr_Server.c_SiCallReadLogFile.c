
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;
typedef int RPC_READ_LOG_FILE ;
typedef int PACK ;
typedef int FARM_MEMBER ;


 int FreePack (int *) ;
 int FreeRpcReadLogFile (int *) ;
 int InRpcReadLogFile (int *,int *) ;
 int * NewPack () ;
 int OutRpcReadLogFile (int *,int *) ;
 int * SiCallTask (int *,int *,char*) ;
 int Zero (int *,int) ;

bool SiCallReadLogFile(SERVER *s, FARM_MEMBER *f, RPC_READ_LOG_FILE *t)
{
 PACK *p;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return 0;
 }

 p = NewPack();
 OutRpcReadLogFile(p, t);
 FreeRpcReadLogFile(t);
 Zero(t, sizeof(RPC_READ_LOG_FILE));

 p = SiCallTask(f, p, "readlogfile");

 if (p == ((void*)0))
 {
  return 0;
 }

 InRpcReadLogFile(t, p);
 FreePack(p);

 return 1;
}
