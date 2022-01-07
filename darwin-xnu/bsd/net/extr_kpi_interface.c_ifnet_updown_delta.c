
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef TYPE_3__* ifnet_t ;
typedef int errno_t ;
struct TYPE_5__ {scalar_t__ tv_sec; } ;
struct TYPE_6__ {TYPE_1__ ifi_lastupdown; } ;
struct TYPE_7__ {TYPE_2__ if_data; } ;


 int EINVAL ;
 scalar_t__ net_uptime () ;

errno_t
ifnet_updown_delta(ifnet_t interface, struct timeval *updown_delta)
{
 if (interface == ((void*)0)) {
  return (EINVAL);
 }


 updown_delta->tv_sec = net_uptime();
 if (updown_delta->tv_sec > interface->if_data.ifi_lastupdown.tv_sec) {
  updown_delta->tv_sec -= interface->if_data.ifi_lastupdown.tv_sec;
 }
 updown_delta->tv_usec = 0;

 return (0);
}
