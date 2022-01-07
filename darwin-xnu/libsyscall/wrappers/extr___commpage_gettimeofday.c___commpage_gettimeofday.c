
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int __commpage_gettimeofday_internal (struct timeval*,int *) ;

int
__commpage_gettimeofday(struct timeval *tp)
{
 return __commpage_gettimeofday_internal(tp, ((void*)0));
}
