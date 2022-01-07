
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {unsigned int sin_scope_id; } ;


 int ASSERT_SINIFSCOPE (struct sockaddr*) ;
 TYPE_1__* SINIFSCOPE (struct sockaddr*) ;

void
sin_set_ifscope(struct sockaddr *sa, unsigned int ifscope)
{

 ASSERT_SINIFSCOPE(sa);

 SINIFSCOPE(sa)->sin_scope_id = ifscope;
}
