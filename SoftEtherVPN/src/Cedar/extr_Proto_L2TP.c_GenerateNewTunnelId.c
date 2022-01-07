
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int L2TP_SERVER ;
typedef int IP ;


 int GenerateNewTunnelIdEx (int *,int *,int) ;

UINT GenerateNewTunnelId(L2TP_SERVER *l2tp, IP *client_ip)
{
 return GenerateNewTunnelIdEx(l2tp, client_ip, 0);
}
