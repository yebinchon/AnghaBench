
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags1; } ;
typedef scalar_t__ boolean_t ;


 int SOF1_IF_2KCL ;

void
soif2kcl(struct socket *so, boolean_t set)
{
 if (set)
  so->so_flags1 |= SOF1_IF_2KCL;
 else
  so->so_flags1 &= ~SOF1_IF_2KCL;
}
