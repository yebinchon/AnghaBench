
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Ref; } ;
typedef TYPE_1__ GETIP_THREAD_PARAM ;


 int CleanupGetIPThreadParam (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseGetIPThreadParam(GETIP_THREAD_PARAM *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 if (Release(p->Ref) == 0)
 {
  CleanupGetIPThreadParam(p);
 }
}
