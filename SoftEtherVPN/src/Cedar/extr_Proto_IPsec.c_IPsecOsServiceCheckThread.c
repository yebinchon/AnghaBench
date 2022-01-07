
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int HostIPAddressListChanged; int OsServiceStoped; int Halt; int OsServiceCheckThreadEvent; } ;
typedef int THREAD ;
typedef TYPE_1__ IPSEC_SERVER ;


 int IPSEC_CHECK_OS_SERVICE_INTERVAL_INITIAL ;
 int IPSEC_CHECK_OS_SERVICE_INTERVAL_MAX ;
 scalar_t__ IPsecCheckOsService (TYPE_1__*) ;
 int MIN (int,int ) ;
 int Wait (int ,int) ;

void IPsecOsServiceCheckThread(THREAD *t, void *p)
{
 UINT interval = IPSEC_CHECK_OS_SERVICE_INTERVAL_INITIAL;
 IPSEC_SERVER *s = (IPSEC_SERVER *)p;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 s->HostIPAddressListChanged = 1;
 s->OsServiceStoped = 0;

 while (s->Halt == 0)
 {
  if (IPsecCheckOsService(s))
  {
   interval = IPSEC_CHECK_OS_SERVICE_INTERVAL_INITIAL;
  }

  if (Wait(s->OsServiceCheckThreadEvent, interval) == 0)
  {
   interval = MIN(interval * 2, IPSEC_CHECK_OS_SERVICE_INTERVAL_MAX);
  }
  else
  {
   interval = IPSEC_CHECK_OS_SERVICE_INTERVAL_INITIAL;
  }
 }

 IPsecCheckOsService(s);
}
