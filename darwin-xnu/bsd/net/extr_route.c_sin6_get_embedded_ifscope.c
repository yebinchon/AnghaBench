
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_3__ {int * s6_addr16; } ;
struct TYPE_4__ {TYPE_1__ sin6_addr; } ;


 int ASSERT_SIN6IFSCOPE (struct sockaddr*) ;
 TYPE_2__* SIN6 (struct sockaddr*) ;
 unsigned int ntohs (int ) ;

__attribute__((used)) static inline unsigned int
sin6_get_embedded_ifscope(struct sockaddr *sa)
{

 ASSERT_SIN6IFSCOPE(sa);

 return (ntohs(SIN6(sa)->sin6_addr.s6_addr16[1]));
}
