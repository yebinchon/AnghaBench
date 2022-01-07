
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int uint64_t ;
struct TYPE_3__ {int cur_size; int zone_name; } ;


 int strlcpy (char*,int ,size_t) ;
 TYPE_1__* zone_find_largest () ;

void get_largest_zone_info(char *zone_name, size_t zone_name_len, uint64_t *zone_size)
{
 zone_t largest_zone = zone_find_largest();
 strlcpy(zone_name, largest_zone->zone_name, zone_name_len);
 *zone_size = largest_zone->cur_size;
}
