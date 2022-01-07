
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
typedef TYPE_2__* ifnet_t ;
typedef int errno_t ;
struct TYPE_4__ {struct timeval ifi_lastchange; } ;
struct TYPE_5__ {TYPE_1__ if_data; } ;


 int EINVAL ;
 scalar_t__ boottime_sec () ;

errno_t
ifnet_lastchange(ifnet_t interface, struct timeval *last_change)
{
 if (interface == ((void*)0))
  return (EINVAL);

 *last_change = interface->if_data.ifi_lastchange;

 last_change->tv_sec += boottime_sec();

 return (0);
}
