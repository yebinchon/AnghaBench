
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int microuptime (struct timeval*) ;
 int net_update_uptime_with_time (struct timeval*) ;

void
net_update_uptime(void)
{
 struct timeval tv;

 microuptime(&tv);

 net_update_uptime_with_time(&tv);
}
