
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ ExpiresTick; int ClientIP; } ;
struct TYPE_8__ {int * NatT_SourceIpList; } ;
typedef TYPE_1__ RUDP_STACK ;
typedef TYPE_2__ RUDP_SOURCE_IP ;
typedef int LIST ;
typedef int IP ;


 int Add (int *,TYPE_2__*) ;
 scalar_t__ CmpIpAddr (int *,int *) ;
 int Copy (int *,int *,int) ;
 int Debug (char*,int *,scalar_t__) ;
 int Delete (int *,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 scalar_t__ LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 scalar_t__ RUDP_MAX_VALIDATED_SOURCE_IP_ADDRESSES ;
 scalar_t__ RUDP_VALIDATED_SOURCE_IP_ADDRESS_EXPIRES ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;
 TYPE_2__* ZeroMalloc (int) ;

void RUDPAddIpToValidateList(RUDP_STACK *r, IP *ip)
{
 UINT i;
 RUDP_SOURCE_IP *sip;
 UINT64 now = Tick64();
 LIST *o = ((void*)0);

 if (r == ((void*)0) || ip == ((void*)0))
 {
  return;
 }

 if (LIST_NUM(r->NatT_SourceIpList) >= RUDP_MAX_VALIDATED_SOURCE_IP_ADDRESSES)
 {
  return;
 }

 for (i = 0;i < LIST_NUM(r->NatT_SourceIpList);i++)
 {
  RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)LIST_DATA(r->NatT_SourceIpList, i);

  if (s->ExpiresTick <= now)
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }

   Add(o, s);
  }
 }

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)LIST_DATA(o, i);

   Delete(r->NatT_SourceIpList, s);

   Free(s);
  }

  ReleaseList(o);
 }

 sip = ((void*)0);

 for (i = 0;i < LIST_NUM(r->NatT_SourceIpList);i++)
 {
  RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)LIST_DATA(r->NatT_SourceIpList, i);

  if (CmpIpAddr(&s->ClientIP, ip) == 0)
  {
   sip = s;
   break;
  }
 }

 if (sip == ((void*)0))
 {
  sip = ZeroMalloc(sizeof(RUDP_SOURCE_IP));

  Copy(&sip->ClientIP, ip, sizeof(IP));

  Add(r->NatT_SourceIpList, sip);
 }

 sip->ExpiresTick = now + (UINT64)RUDP_VALIDATED_SOURCE_IP_ADDRESS_EXPIRES;

 Debug("RUDP: NAT-T: Src IP added: %r (current list len = %u)\n", ip, LIST_NUM(r->NatT_SourceIpList));
}
