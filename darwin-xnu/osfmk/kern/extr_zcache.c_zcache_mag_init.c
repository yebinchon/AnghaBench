
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcc_magazine {int zcc_magazine_capacity; scalar_t__ zcc_magazine_index; } ;



void zcache_mag_init(struct zcc_magazine *mag, int count)
{
 mag->zcc_magazine_index = 0;
 mag->zcc_magazine_capacity = count;
}
