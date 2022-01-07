
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_2__* ifnet_t ;
typedef int errno_t ;
struct TYPE_4__ {int ifi_metric; } ;
struct TYPE_5__ {TYPE_1__ if_data; } ;


 int EINVAL ;

errno_t
ifnet_set_metric(ifnet_t interface, u_int32_t metric)
{
 if (interface == ((void*)0))
  return (EINVAL);

 interface->if_data.ifi_metric = metric;
 return (0);
}
