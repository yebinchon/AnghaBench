
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int hubname ;
typedef int SERVER ;
typedef int RPC_ENUM_IP_TABLE ;
typedef int PACK ;


 int FreeRpcEnumIpTable (int *) ;
 int MAX_HUBNAME_LEN ;
 int * NewPack () ;
 int OutRpcEnumIpTable (int *,int *) ;
 int PackGetStr (int *,char*,char*,int) ;
 int SiEnumIpTable (int *,char*,int *) ;
 int Zero (int *,int) ;

PACK *SiCalledEnumIpTable(SERVER *s, PACK *p)
{
 char hubname[MAX_HUBNAME_LEN + 1];
 RPC_ENUM_IP_TABLE t;
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

 SiEnumIpTable(s, hubname, &t);

 ret = NewPack();
 OutRpcEnumIpTable(ret, &t);
 FreeRpcEnumIpTable(&t);

 return ret;
}
