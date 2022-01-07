
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct time_conv {struct timeval* start; } ;



__inline void GET_TIME(struct timeval *dst, struct time_conv *data)
{
 return;
 *dst=data->start[0];
}
