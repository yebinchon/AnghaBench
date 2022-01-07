
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;



int
get_tcp_str_size(void)
{
 return (sizeof(struct tcpcb));
}
