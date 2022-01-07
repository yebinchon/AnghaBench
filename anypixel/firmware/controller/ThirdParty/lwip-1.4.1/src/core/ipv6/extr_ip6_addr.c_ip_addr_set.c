
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_addr {int dummy; } ;


 int SMEMCPY (struct ip_addr*,struct ip_addr*,int) ;

void
ip_addr_set(struct ip_addr *dest, struct ip_addr *src)
{
  SMEMCPY(dest, src, sizeof(struct ip_addr));




}
