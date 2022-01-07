
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_sec; } ;


 int microuptime (struct timeval*) ;

uint64_t
pf_time_second(void)
{
 struct timeval t;

 microuptime(&t);
 return (t.tv_sec);
}
