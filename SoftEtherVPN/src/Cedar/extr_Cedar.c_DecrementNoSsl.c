
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int NonSslList; } ;
struct TYPE_6__ {scalar_t__ Count; } ;
typedef TYPE_1__ NON_SSL ;
typedef int IP ;
typedef TYPE_2__ CEDAR ;


 int LockList (int ) ;
 TYPE_1__* SearchNoSslList (TYPE_2__*,int *) ;
 int UnlockList (int ) ;

void DecrementNoSsl(CEDAR *c, IP *ip, UINT num_dec)
{

 if (c == ((void*)0) || ip == ((void*)0))
 {
  return;
 }

 LockList(c->NonSslList);
 {
  NON_SSL *n = SearchNoSslList(c, ip);

  if (n != ((void*)0))
  {
   if (n->Count >= num_dec)
   {
    n->Count -= num_dec;
   }
  }
 }
 UnlockList(c->NonSslList);
}
