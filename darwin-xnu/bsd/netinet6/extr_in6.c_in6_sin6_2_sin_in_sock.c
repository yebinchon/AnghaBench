
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;

void
in6_sin6_2_sin_in_sock(struct sockaddr *nam)
{
 struct sockaddr_in *sin_p;
 struct sockaddr_in6 sin6;





 sin6 = *(struct sockaddr_in6 *)(void *)nam;
 sin_p = (struct sockaddr_in *)(void *)nam;
 in6_sin6_2_sin(sin_p, &sin6);
}
