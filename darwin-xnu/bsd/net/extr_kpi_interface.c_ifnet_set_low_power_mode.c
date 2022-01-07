
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifnet_t ;
typedef int errno_t ;
typedef int boolean_t ;


 int if_set_low_power (int ,int ) ;

errno_t
ifnet_set_low_power_mode(ifnet_t ifp, boolean_t on)
{
 errno_t error;

 error = if_set_low_power(ifp, on);

 return (error);
}
