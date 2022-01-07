
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int filepath ;
typedef int UINT ;
typedef int SERVER ;
typedef int RPC_READ_LOG_FILE ;
typedef int PACK ;


 int FreeRpcReadLogFile (int *) ;
 int MAX_PATH ;
 int * NewPack () ;
 int OutRpcReadLogFile (int *,int *) ;
 int PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,char*,int) ;
 int SiReadLocalLogFile (int *,char*,int ,int *) ;
 int Zero (int *,int) ;

PACK *SiCalledReadLogFile(SERVER *s, PACK *p)
{
 RPC_READ_LOG_FILE t;
 PACK *ret;
 char filepath[MAX_PATH];
 UINT offset;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return ((void*)0);
 }

 PackGetStr(p, "FilePath", filepath, sizeof(filepath));
 offset = PackGetInt(p, "Offset");

 Zero(&t, sizeof(t));

 SiReadLocalLogFile(s, filepath, offset, &t);

 ret = NewPack();

 OutRpcReadLogFile(ret, &t);
 FreeRpcReadLogFile(&t);

 return ret;
}
