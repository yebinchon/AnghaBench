
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct os_time {int dummy; } ;


 int gettimeofday (struct timeval*,int *) ;

int os_get_time(struct os_time *t)
{
    return gettimeofday((struct timeval*) t, ((void*)0));
}
