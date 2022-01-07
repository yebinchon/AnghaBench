
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int IP ;


 int Add (int *,int *) ;
 int * Clone (int *,int) ;
 int CmpIpAddressList ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int ) ;

LIST *CloneIPAddressList(LIST *o)
{
 LIST *ret;
 UINT i;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 ret = NewListFast(CmpIpAddressList);

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IP *ip = LIST_DATA(o, i);

  if (ip != ((void*)0))
  {
   ip = Clone(ip, sizeof(IP));

   Add(ret, ip);
  }
 }

 return ret;
}
