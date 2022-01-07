
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;


 int zfree (int ,void*) ;

void
mac_zfree(zone_t zone, void *elem)
{

 zfree(zone, elem);
}
