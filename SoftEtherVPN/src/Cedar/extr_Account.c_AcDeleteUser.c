
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USER ;
struct TYPE_6__ {TYPE_1__* HubDb; } ;
struct TYPE_5__ {int UserList; } ;
typedef TYPE_2__ HUB ;


 int * AcGetUser (TYPE_2__*,char*) ;
 scalar_t__ Delete (int ,int *) ;
 int ReleaseUser (int *) ;

bool AcDeleteUser(HUB *h, char *name)
{
 USER *u;

 if (h == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 u = AcGetUser(h, name);
 if (u == ((void*)0))
 {
  return 0;
 }

 if (Delete(h->HubDb->UserList, u))
 {
  ReleaseUser(u);
 }

 ReleaseUser(u);

 return 1;
}
