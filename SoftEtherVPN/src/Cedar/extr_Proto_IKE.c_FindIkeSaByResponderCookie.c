
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_8__ {scalar_t__ ResponderCookie; } ;
struct TYPE_7__ {int IkeSaList; } ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_SA ;


 TYPE_2__* Search (int ,TYPE_2__*) ;

IKE_SA *FindIkeSaByResponderCookie(IKE_SERVER *ike, UINT64 responder_cookie)
{
 IKE_SA t;

 if (ike == ((void*)0) || responder_cookie == 0)
 {
  return ((void*)0);
 }

 t.ResponderCookie = responder_cookie;

 return Search(ike->IkeSaList, &t);
}
