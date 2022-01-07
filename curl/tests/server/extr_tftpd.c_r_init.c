
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tftphdr {int dummy; } ;


 struct tftphdr* rw_init (int) ;

__attribute__((used)) static struct tftphdr *r_init(void)
{
  return rw_init(1);
}
