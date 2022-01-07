
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;


 scalar_t__ _net_uptime ;
 int net_update_uptime () ;

u_int64_t
net_uptime(void)
{
 if (_net_uptime == 0)
  net_update_uptime();

 return (_net_uptime);
}
