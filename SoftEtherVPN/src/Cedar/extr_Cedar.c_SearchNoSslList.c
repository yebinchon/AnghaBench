
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int t ;
struct TYPE_9__ {int NonSslList; } ;
struct TYPE_8__ {int IpAddress; } ;
typedef TYPE_1__ NON_SSL ;
typedef int IP ;
typedef TYPE_2__ CEDAR ;


 int Copy (int *,int *,int) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

NON_SSL *SearchNoSslList(CEDAR *c, IP *ip)
{
 NON_SSL *n, t;

 if (c == ((void*)0) || ip == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&t, sizeof(t));
 Copy(&t.IpAddress, ip, sizeof(IP));

 n = Search(c->NonSslList, &t);

 if (n == ((void*)0))
 {
  return ((void*)0);
 }

 return n;
}
