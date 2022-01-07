
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int L2TP_SERVER ;
typedef int IP ;


 int * GetTunnelFromId (int *,int *,int,int) ;

UINT GenerateNewTunnelIdEx(L2TP_SERVER *l2tp, IP *client_ip, bool is_32bit)
{
 UINT id;
 UINT max_number = 0xffff;

 if (l2tp == ((void*)0) || client_ip == ((void*)0))
 {
  return 0;
 }

 if (is_32bit)
 {
  max_number = 0xfffffffe;
 }

 for (id = 1;id <= max_number;id++)
 {
  if (GetTunnelFromId(l2tp, client_ip, id, is_32bit) == ((void*)0))
  {
   return id;
  }
 }

 return 0;
}
