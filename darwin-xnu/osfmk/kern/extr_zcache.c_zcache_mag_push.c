
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcc_magazine {int zcc_magazine_index; void** zcc_elements; } ;


 int assert (int ) ;
 int zcache_mag_has_space (struct zcc_magazine*) ;

void zcache_mag_push(struct zcc_magazine *mag, void *elem)
{
 assert(zcache_mag_has_space(mag));
 mag->zcc_elements[mag->zcc_magazine_index ++] = elem;
}
