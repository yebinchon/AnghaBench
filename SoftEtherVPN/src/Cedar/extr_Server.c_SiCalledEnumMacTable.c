
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int hubname ;
typedef int SERVER ;
typedef int RPC_ENUM_MAC_TABLE ;
typedef int PACK ;


 int FreeRpcEnumMacTable (int *) ;
 int MAX_HUBNAME_LEN ;
 int * NewPack () ;
 int OutRpcEnumMacTable (int *,int *) ;
 int PackGetStr (int *,char*,char*,int) ;
 int SiEnumMacTable (int *,char*,int *) ;
 int Zero (int *,int) ;

PACK *SiCalledEnumMacTable(SERVER *s, PACK *p)
{
 char hubname[MAX_HUBNAME_LEN + 1];
 RPC_ENUM_MAC_TABLE t;
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

 SiEnumMacTable(s, hubname, &t);

 ret = NewPack();
 OutRpcEnumMacTable(ret, &t);
 FreeRpcEnumMacTable(&t);

 return ret;
}
