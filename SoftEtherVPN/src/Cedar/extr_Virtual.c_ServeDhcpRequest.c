
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;


 scalar_t__ ServeDhcpDiscover (int *,int *,scalar_t__) ;

UINT ServeDhcpRequest(VH *v, UCHAR *mac, UINT request_ip)
{
 UINT ret;

 if (v == ((void*)0) || mac == ((void*)0))
 {
  return 0;
 }

 ret = ServeDhcpDiscover(v, mac, request_ip);
 if (ret != request_ip)
 {
  if (request_ip != 0)
  {

   return 0;
  }
 }

 return ret;
}
