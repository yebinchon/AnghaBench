
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frag6_drain () ;
 int in6_rtqdrain () ;
 int nd6_drain (int *) ;

void
ip6_drain(void)
{
 frag6_drain();
 in6_rtqdrain();
 nd6_drain(((void*)0));
}
