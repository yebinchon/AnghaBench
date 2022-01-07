
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int FreeHostIPAddressList (int *) ;
 int * GetHostIPAddressList () ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

bool IsMyIPAddress(IP *ip)
{
 LIST *o;
 UINT i;
 bool ret = 0;

 if (ip == ((void*)0))
 {
  return 0;
 }

 o = GetHostIPAddressList();

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IP *a = LIST_DATA(o, i);

  if (CmpIpAddr(ip, a) == 0)
  {
   ret = 1;
   break;
  }
 }

 FreeHostIPAddressList(o);

 return ret;
}
