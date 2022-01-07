
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int Session; } ;
struct TYPE_3__ {int UserSelected; int Expired; int ServerX; TYPE_2__* Connection; int (* CheckCertProc ) (int ,TYPE_2__*,int ,int *) ;int Ok; } ;
typedef int THREAD ;
typedef TYPE_1__ CHECK_CERT_THREAD_PROC ;


 int NoticeThreadInit (int *) ;
 int stub1 (int ,TYPE_2__*,int ,int *) ;

void ClientCheckServerCertThread(THREAD *thread, void *param)
{
 CHECK_CERT_THREAD_PROC *p = (CHECK_CERT_THREAD_PROC *)param;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }


 NoticeThreadInit(thread);


 p->Ok = p->CheckCertProc(p->Connection->Session, p->Connection, p->ServerX, &p->Expired);
 p->UserSelected = 1;
}
