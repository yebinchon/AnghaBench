
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int IPsecSaList; } ;
struct TYPE_6__ {scalar_t__ Spi; int * IkeClient; } ;
typedef TYPE_1__ IPSECSA ;
typedef TYPE_2__ IKE_SERVER ;
typedef int IKE_CLIENT ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

IPSECSA *SearchIPsecSaBySpi(IKE_SERVER *ike, IKE_CLIENT *c, UINT spi)
{
 UINT i;

 if (ike == ((void*)0) || c == ((void*)0) || spi == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(ike->IPsecSaList);i++)
 {
  IPSECSA *sa = LIST_DATA(ike->IPsecSaList, i);

  if (sa->Spi == spi)
  {
   if (sa->IkeClient == c)
   {
    return sa;
   }
  }
 }

 return ((void*)0);
}
