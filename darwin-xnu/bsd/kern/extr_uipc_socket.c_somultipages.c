
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; } ;
typedef scalar_t__ boolean_t ;


 int SOF_MULTIPAGES ;

void
somultipages(struct socket *so, boolean_t set)
{
 if (set)
  so->so_flags |= SOF_MULTIPAGES;
 else
  so->so_flags &= ~SOF_MULTIPAGES;
}
