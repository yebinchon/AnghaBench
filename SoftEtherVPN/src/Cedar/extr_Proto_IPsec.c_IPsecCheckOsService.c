
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Check_LastEnabledStatus; int HostIPAddressListChanged; int OsServiceStoped; int * Win7; } ;
struct TYPE_6__ {scalar_t__ L2TP_IPsec; scalar_t__ EtherIP_IPsec; } ;
typedef TYPE_1__ IPSEC_SERVICES ;
typedef TYPE_2__ IPSEC_SERVER ;


 int IPsecServerGetServices (TYPE_2__*,TYPE_1__*) ;
 int IPsecWin7Free (int *) ;
 int * IPsecWin7Init () ;
 int IPsecWin7UpdateHostIPAddressList (int *) ;
 int MsStartIPsecService () ;
 scalar_t__ MsStopIPsecService () ;
 int UnixSetEnableKernelEspProcessing (int) ;

bool IPsecCheckOsService(IPSEC_SERVER *s)
{
 bool b_ipsec;
 IPSEC_SERVICES sl;
 bool ret = 0;

 if (s == ((void*)0))
 {
  return 0;
 }

 IPsecServerGetServices(s, &sl);

 b_ipsec = (sl.EtherIP_IPsec || sl.L2TP_IPsec);

 if (b_ipsec != s->Check_LastEnabledStatus)
 {
  s->Check_LastEnabledStatus = b_ipsec;

  if (b_ipsec)
  {
  }
  else
  {
   UnixSetEnableKernelEspProcessing(1);

  }
 }

 if (b_ipsec)
 {







  UnixSetEnableKernelEspProcessing(0);

 }
 return ret;
}
