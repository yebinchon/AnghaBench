
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcc_magazine {size_t zcc_magazine_index; int ** zcc_elements; } ;


 int assert (int ) ;
 int zcache_mag_has_elements (struct zcc_magazine*) ;

void *zcache_mag_pop(struct zcc_magazine *mag)
{
 void *elem;
 assert(zcache_mag_has_elements(mag));
 elem = mag->zcc_elements[--mag->zcc_magazine_index];

 mag->zcc_elements[mag->zcc_magazine_index] = ((void*)0);
 assert(elem != ((void*)0));
 return elem;
}
