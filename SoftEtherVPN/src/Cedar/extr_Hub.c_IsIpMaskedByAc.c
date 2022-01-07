
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Masked; int SubnetMask; int IpAddress; } ;
typedef int IP ;
typedef TYPE_1__ AC ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int GSF_DISABLE_AC ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 int IPAnd6 (int *,int *,int *) ;
 int IPToUINT (int *) ;
 scalar_t__ IsIP4 (int *) ;

bool IsIpMaskedByAc(IP *ip, AC *ac)
{
 UINT uip, net, mask;

 if (ip == ((void*)0) || ac == ((void*)0))
 {
  return 0;
 }

 if (GetGlobalServerFlag(GSF_DISABLE_AC) != 0)
 {
  return 0;
 }

 if (IsIP4(ip))
 {

  uip = IPToUINT(ip);
  net = IPToUINT(&ac->IpAddress);
  mask = IPToUINT(&ac->SubnetMask);

  if (ac->Masked == 0)
  {
   if (uip == net)
   {
    return 1;
   }
  }
  else
  {
   if ((uip & mask) == (net & mask))
   {
    return 1;
   }
  }

  return 0;
 }
 else
 {

  if (ac->Masked == 0)
  {
   if (CmpIpAddr(ip, &ac->IpAddress) == 0)
   {
    return 1;
   }
  }
  else
  {
   IP and1, and2;

   IPAnd6(&and1, ip, &ac->SubnetMask);
   IPAnd6(&and2, &ac->IpAddress, &ac->SubnetMask);

   if (CmpIpAddr(&and1, &and2) == 0)
   {
    return 1;
   }
  }

  return 0;
 }
}
