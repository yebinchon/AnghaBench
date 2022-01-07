
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int dummy; } ;



int
get_inpcb_str_size(void)
{
 return (sizeof(struct inpcb));
}
