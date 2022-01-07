
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int t ;
struct TYPE_9__ {int HubName; } ;
struct TYPE_8__ {int IfList; } ;
typedef TYPE_1__ L3SW ;
typedef TYPE_2__ L3IF ;


 TYPE_2__* Search (int ,TYPE_2__*) ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_2__*,int) ;

L3IF *L3SearchIf(L3SW *s, char *hubname)
{
 L3IF t, *f;

 if (s == ((void*)0) || hubname == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), hubname);

 f = Search(s->IfList, &t);

 return f;
}
