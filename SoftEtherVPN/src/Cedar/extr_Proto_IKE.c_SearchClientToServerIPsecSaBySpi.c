
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int IPsecSaList; } ;
struct TYPE_7__ {int ServerToClient; scalar_t__ Spi; } ;
typedef TYPE_1__ IPSECSA ;
typedef TYPE_2__ IKE_SERVER ;


 TYPE_1__* Search (int ,TYPE_1__*) ;

IPSECSA *SearchClientToServerIPsecSaBySpi(IKE_SERVER *ike, UINT spi)
{
 IPSECSA t;

 if (ike == ((void*)0) || spi == 0)
 {
  return ((void*)0);
 }

 t.ServerToClient = 0;
 t.Spi = spi;

 return Search(ike->IPsecSaList, &t);
}
