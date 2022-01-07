
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {unsigned int sin6_scope_id; } ;


 int ASSERT_SIN6IFSCOPE (struct sockaddr*) ;
 TYPE_1__* SIN6IFSCOPE (struct sockaddr*) ;

unsigned int
sin6_get_ifscope(struct sockaddr *sa)
{

 ASSERT_SIN6IFSCOPE(sa);

 return (SIN6IFSCOPE(sa)->sin6_scope_id);
}
