
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int SessionList; int Name; } ;
struct TYPE_7__ {int Name; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ HUB ;


 int Debug (char*,int ,int ) ;
 scalar_t__ Delete (int ,TYPE_1__*) ;
 int LockList (int ) ;
 int ReleaseSession (TYPE_1__*) ;
 int UnlockList (int ) ;

void DelSession(HUB *h, SESSION *s)
{

 if (h == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 LockList(h->SessionList);
 {
  if (Delete(h->SessionList, s))
  {
   Debug("Session %s was Deleted from %s.\n", s->Name, h->Name);
   ReleaseSession(s);
  }
 }
 UnlockList(h->SessionList);
}
