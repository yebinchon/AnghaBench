
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_4__ {int * s6_addr16; } ;
struct TYPE_3__ {TYPE_2__ sin6_addr; } ;


 int ASSERT_SIN6IFSCOPE (struct sockaddr*) ;
 int IN6_IS_SCOPE_EMBED (TYPE_2__*) ;
 TYPE_1__* SIN6 (struct sockaddr*) ;
 int VERIFY (int ) ;
 int htons (unsigned int) ;

__attribute__((used)) static inline void
sin6_set_embedded_ifscope(struct sockaddr *sa, unsigned int ifscope)
{

 ASSERT_SIN6IFSCOPE(sa);
 VERIFY(IN6_IS_SCOPE_EMBED(&(SIN6(sa)->sin6_addr)));

 SIN6(sa)->sin6_addr.s6_addr16[1] = htons(ifscope);
}
