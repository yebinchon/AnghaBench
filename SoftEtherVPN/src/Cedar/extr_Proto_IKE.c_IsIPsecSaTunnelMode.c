
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ CapsuleMode; } ;
struct TYPE_5__ {TYPE_1__ TransformSetting; } ;
typedef TYPE_2__ IPSECSA ;


 scalar_t__ IKE_P2_CAPSULE_NAT_TUNNEL_1 ;
 scalar_t__ IKE_P2_CAPSULE_NAT_TUNNEL_2 ;
 scalar_t__ IKE_P2_CAPSULE_TUNNEL ;

bool IsIPsecSaTunnelMode(IPSECSA *sa)
{

 if (sa == ((void*)0))
 {
  return 0;
 }

 if (sa->TransformSetting.CapsuleMode == IKE_P2_CAPSULE_TUNNEL ||
  sa->TransformSetting.CapsuleMode == IKE_P2_CAPSULE_NAT_TUNNEL_1 ||
  sa->TransformSetting.CapsuleMode == IKE_P2_CAPSULE_NAT_TUNNEL_2)
 {
  return 1;
 }

 return 0;
}
