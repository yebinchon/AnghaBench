
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IPv6; int HostName; int Ip; int Ok; int Ref; } ;
typedef int THREAD ;
typedef TYPE_1__ GETIP_THREAD_PARAM ;


 int AddRef (int ) ;
 int AddWaitThread (int *) ;
 int Dec (int ) ;
 int DelWaitThread (int *) ;
 int GetIP4Inner (int *,int ) ;
 int GetIP6Inner (int *,int ) ;
 int NoticeThreadInit (int *) ;
 int ReleaseGetIPThreadParam (TYPE_1__*) ;
 int getip_thread_counter ;

void GetIP4Ex6ExThread(THREAD *t, void *param)
{
 GETIP_THREAD_PARAM *p;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 p = (GETIP_THREAD_PARAM *)param;

 AddRef(p->Ref);

 NoticeThreadInit(t);

 AddWaitThread(t);


 if (p->IPv6 == 0)
 {

  p->Ok = GetIP4Inner(&p->Ip, p->HostName);
 }
 else
 {

  p->Ok = GetIP6Inner(&p->Ip, p->HostName);
 }

 ReleaseGetIPThreadParam(p);

 DelWaitThread(t);

 Dec(getip_thread_counter);
}
