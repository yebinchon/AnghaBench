
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ ResponderCookie; } ;
struct TYPE_5__ {int IkeSaList; } ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_SA ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ Rand64 () ;

UINT64 GenerateNewResponserCookie(IKE_SERVER *ike)
{
 UINT64 c;

 if (ike == ((void*)0))
 {
  return 0;
 }

 while (1)
 {
  bool b = 0;
  UINT i;

  c = Rand64();

  for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
  {
   IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);

   if (sa->ResponderCookie == c)
   {
    b = 1;
    break;
   }
  }

  if (b == 0)
  {
   return c;
  }
 }
}
