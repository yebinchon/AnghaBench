
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Cedar; int Event; int Thread; int lock; int * Sock; } ;
typedef TYPE_1__ LISTENER ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int ReleaseCedar (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseSock (int *) ;
 int ReleaseThread (int ) ;

void CleanupListener(LISTENER *r)
{
 UINT i = 0;

 if (r == ((void*)0))
 {
  return;
 }


 if (r->Sock != ((void*)0))
 {
  ReleaseSock(r->Sock);
 }

 DeleteLock(r->lock);
 ReleaseThread(r->Thread);
 ReleaseEvent(r->Event);

 ReleaseCedar(r->Cedar);

 Free(r);
}
