
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcc_magazine {scalar_t__ zcc_magazine_index; } ;



bool zcache_mag_has_elements(struct zcc_magazine *mag)
{
 return (mag->zcc_magazine_index > 0);
}
