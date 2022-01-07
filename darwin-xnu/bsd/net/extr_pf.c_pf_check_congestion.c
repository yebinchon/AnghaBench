
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifqueue {int dummy; } ;



__attribute__((used)) static int
pf_check_congestion(struct ifqueue *ifq)
{
#pragma unused(ifq)
 return (0);
}
