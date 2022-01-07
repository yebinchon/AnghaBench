
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int hubname ;
typedef int SERVER ;
typedef int RPC_ENUM_SESSION ;
typedef int PACK ;


 int FreeRpcEnumSession (int *) ;
 int MAX_HUBNAME_LEN ;
 int * NewPack () ;
 int OutRpcEnumSession (int *,int *) ;
 int PackGetStr (int *,char*,char*,int) ;
 int SiEnumLocalSession (int *,char*,int *) ;
 int Zero (int *,int) ;

PACK *SiCalledEnumSession(SERVER *s, PACK *p)
{
 char hubname[MAX_HUBNAME_LEN + 1];
 RPC_ENUM_SESSION t;
 PACK *ret;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return NewPack();
 }
 if (PackGetStr(p, "HubName", hubname, sizeof(hubname)) == 0)
 {
  return NewPack();
 }
 Zero(&t, sizeof(t));

 SiEnumLocalSession(s, hubname, &t);

 ret = NewPack();
 OutRpcEnumSession(ret, &t);
 FreeRpcEnumSession(&t);

 return ret;
}
