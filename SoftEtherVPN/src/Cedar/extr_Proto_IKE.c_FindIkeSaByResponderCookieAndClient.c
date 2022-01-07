
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_4__ {int * IkeClient; } ;
typedef int IKE_SERVER ;
typedef TYPE_1__ IKE_SA ;
typedef int IKE_CLIENT ;


 TYPE_1__* FindIkeSaByResponderCookie (int *,scalar_t__) ;

IKE_SA *FindIkeSaByResponderCookieAndClient(IKE_SERVER *ike, UINT64 responder_cookie, IKE_CLIENT *c)
{
 IKE_SA *sa;

 if (ike == ((void*)0) || responder_cookie == 0 || c == ((void*)0))
 {
  return ((void*)0);
 }

 sa = FindIkeSaByResponderCookie(ike, responder_cookie);
 if (sa == ((void*)0))
 {
  return ((void*)0);
 }

 if (sa->IkeClient != c)
 {
  return ((void*)0);
 }

 return sa;
}
