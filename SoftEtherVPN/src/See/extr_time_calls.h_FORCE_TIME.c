
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct time_conv {struct timeval* start; } ;



__inline void FORCE_TIME(struct timeval *src, struct time_conv *dest)
{
 dest->start[0]=*src;
}
