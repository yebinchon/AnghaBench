
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ InitiatorCookie; scalar_t__ ResponderCookie; } ;
struct TYPE_6__ {int IkeSaList; } ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_SA ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

IKE_SA *SearchIkeSaByCookie(IKE_SERVER *ike, UINT64 init_cookie, UINT64 resp_cookie)
{
 UINT i;

 if (ike == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
 {
  IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);

  if (sa->InitiatorCookie == init_cookie && sa->ResponderCookie == resp_cookie)
  {
   return sa;
  }
 }

 return ((void*)0);
}
