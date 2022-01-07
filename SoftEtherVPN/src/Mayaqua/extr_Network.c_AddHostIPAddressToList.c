
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;
typedef int IP ;


 int Clone (int *,int) ;
 int Insert (int *,int ) ;
 int * Search (int *,int *) ;

void AddHostIPAddressToList(LIST *o, IP *ip)
{
 IP *r;

 if (o == ((void*)0) || ip == ((void*)0))
 {
  return;
 }

 r = Search(o, ip);
 if (r != ((void*)0))
 {
  return;
 }

 Insert(o, Clone(ip, sizeof(IP)));
}
