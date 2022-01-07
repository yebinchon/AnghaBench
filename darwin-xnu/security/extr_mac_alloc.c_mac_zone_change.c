
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef int boolean_t ;


 int zone_change (int ,unsigned int,int ) ;

void
mac_zone_change(zone_t zone, unsigned int item, boolean_t value)
{

 zone_change(zone, item, value);
}
