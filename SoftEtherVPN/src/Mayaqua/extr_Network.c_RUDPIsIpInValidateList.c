
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ ExpiresTick; int ClientIP; } ;
struct TYPE_7__ {int * NatT_SourceIpList; } ;
typedef TYPE_1__ RUDP_STACK ;
typedef TYPE_2__ RUDP_SOURCE_IP ;
typedef int LIST ;
typedef int IP ;


 int Add (int *,TYPE_2__*) ;
 scalar_t__ CmpIpAddr (int *,int *) ;
 int Debug (char*,int *,int,scalar_t__) ;
 int Delete (int *,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 scalar_t__ IsIPAddressInSameLocalNetwork (int *) ;
 scalar_t__ IsIPPrivate (int *) ;
 scalar_t__ LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;

bool RUDPIsIpInValidateList(RUDP_STACK *r, IP *ip)
{
 UINT i;
 UINT64 now = Tick64();
 LIST *o = ((void*)0);
 bool ret = 0;

 if (r == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }


 if (IsIPPrivate(ip))
 {
  return 1;
 }

 if (IsIPAddressInSameLocalNetwork(ip))
 {
  return 1;
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

 for (i = 0;i < LIST_NUM(r->NatT_SourceIpList);i++)
 {
  RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)LIST_DATA(r->NatT_SourceIpList, i);

  if (CmpIpAddr(&s->ClientIP, ip) == 0)
  {
   ret = 1;
   break;
  }
 }

 Debug("RUDP: NAT-T: Validate IP: %r, ret=%u (current list len = %u)\n", ip, ret, LIST_NUM(r->NatT_SourceIpList));

 return ret;
}
