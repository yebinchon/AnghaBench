
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int Session; } ;
struct TYPE_3__ {int UserFinished; int SecureSign; TYPE_2__* Connection; int (* SecureSignProc ) (int ,TYPE_2__*,int ) ;int Ok; } ;
typedef int THREAD ;
typedef TYPE_1__ SECURE_SIGN_THREAD_PROC ;


 int NoticeThreadInit (int *) ;
 int stub1 (int ,TYPE_2__*,int ) ;

void ClientSecureSignThread(THREAD *thread, void *param)
{
 SECURE_SIGN_THREAD_PROC *p = (SECURE_SIGN_THREAD_PROC *)param;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 NoticeThreadInit(thread);

 p->Ok = p->SecureSignProc(p->Connection->Session, p->Connection, p->SecureSign);
 p->UserFinished = 1;
}
