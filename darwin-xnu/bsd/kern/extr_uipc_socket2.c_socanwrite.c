
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_state; int so_flags1; TYPE_1__* so_proto; } ;
typedef int boolean_t ;
struct TYPE_2__ {int pr_flags; } ;


 int PR_CONNREQUIRED ;
 int SOF1_PRECONNECT_DATA ;
 int SS_ISCONNECTED ;

boolean_t
socanwrite(struct socket *so)
{
 return ((so->so_state & SS_ISCONNECTED) ||
        !(so->so_proto->pr_flags & PR_CONNREQUIRED) ||
        (so->so_flags1 & SOF1_PRECONNECT_DATA));
}
