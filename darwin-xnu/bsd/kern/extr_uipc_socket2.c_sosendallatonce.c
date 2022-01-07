
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* so_proto; } ;
struct TYPE_2__ {int pr_flags; } ;


 int PR_ATOMIC ;

int
sosendallatonce(struct socket *so)
{
 return (so->so_proto->pr_flags & PR_ATOMIC);
}
