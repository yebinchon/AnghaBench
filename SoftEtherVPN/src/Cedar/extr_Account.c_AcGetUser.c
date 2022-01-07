
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char* Name; int ref; } ;
typedef TYPE_2__ USER ;
struct TYPE_11__ {TYPE_1__* HubDb; } ;
struct TYPE_9__ {int UserList; } ;
typedef TYPE_3__ HUB ;


 int AddRef (int ) ;
 scalar_t__ NO_ACCOUNT_DB (TYPE_3__*) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;

USER *AcGetUser(HUB *h, char *name)
{
 USER *u, t;

 if (h == ((void*)0) || name == ((void*)0) || NO_ACCOUNT_DB(h))
 {
  return ((void*)0);
 }

 t.Name = name;
 u = Search(h->HubDb->UserList, &t);
 if (u == ((void*)0))
 {
  return ((void*)0);
 }
 AddRef(u->ref);

 return u;
}
