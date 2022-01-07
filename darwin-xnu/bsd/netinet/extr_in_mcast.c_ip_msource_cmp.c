
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_msource {scalar_t__ ims_haddr; } ;



__attribute__((used)) static __inline int
ip_msource_cmp(const struct ip_msource *a, const struct ip_msource *b)
{

 if (a->ims_haddr < b->ims_haddr)
  return (-1);
 if (a->ims_haddr == b->ims_haddr)
  return (0);
 return (1);
}
