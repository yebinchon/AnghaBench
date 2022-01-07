
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int Protocol; TYPE_1__* Thread; int ref; } ;
struct TYPE_8__ {int ref; } ;
typedef TYPE_1__ THREAD ;
typedef TYPE_2__ LISTENER ;


 int AddRef (int ) ;







 int ListenerTCPMainLoop (TYPE_2__*) ;
 int ListenerUDPMainLoop (TYPE_2__*) ;
 int NoticeThreadInit (TYPE_1__*) ;
 int ReleaseListener (TYPE_2__*) ;

void ListenerThread(THREAD *thread, void *param)
{
 LISTENER *r;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }


 r = (LISTENER *)param;
 AddRef(r->ref);
 r->Thread = thread;
 AddRef(thread->ref);
 NoticeThreadInit(thread);


 switch (r->Protocol)
 {
 case 129:
 case 132:
 case 130:
 case 134:
 case 133:
 case 131:

  ListenerTCPMainLoop(r);
  break;

 case 128:

  ListenerUDPMainLoop(r);
  break;
 }


 ReleaseListener(r);
}
