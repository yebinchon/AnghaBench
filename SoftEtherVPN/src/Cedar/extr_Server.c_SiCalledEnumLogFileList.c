
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int hubname ;
typedef int SERVER ;
typedef int RPC_ENUM_LOG_FILE ;
typedef int PACK ;


 int FreeRpcEnumLogFile (int *) ;
 int MAX_HUBNAME_LEN ;
 int * NewPack () ;
 int OutRpcEnumLogFile (int *,int *) ;
 int PackGetStr (int *,char*,char*,int) ;
 int SiEnumLocalLogFileList (int *,char*,int *) ;
 int Zero (int *,int) ;

PACK *SiCalledEnumLogFileList(SERVER *s, PACK *p)
{
 RPC_ENUM_LOG_FILE t;
 PACK *ret;
 char hubname[MAX_HUBNAME_LEN + 1];

 if (s == ((void*)0) || p == ((void*)0))
 {
  return ((void*)0);
 }

 PackGetStr(p, "HubName", hubname, sizeof(hubname));

 Zero(&t, sizeof(t));

 SiEnumLocalLogFileList(s, hubname, &t);

 ret = NewPack();

 OutRpcEnumLogFile(ret, &t);
 FreeRpcEnumLogFile(&t);

 return ret;
}
