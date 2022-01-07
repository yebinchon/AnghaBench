
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int protocol_family_t ;
typedef int errno_t ;



__attribute__((used)) static errno_t
pflogdelproto(struct ifnet *ifp, protocol_family_t pf)
{
#pragma unused(ifp, pf)
 return (0);
}
