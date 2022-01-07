
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zone_t ;
struct TYPE_2__ {size_t mz_size; int mz_zone; } ;


 size_t MAXMETA ;
 size_t MINMETA ;
 TYPE_1__* meta_zones ;
 int panic (char*,size_t) ;

__attribute__((used)) static __inline__ zone_t
getbufzone(size_t size)
{
 int i;

 if ((size % 512) || (size < MINMETA) || (size > MAXMETA))
  panic("getbufzone: incorect size = %lu", size);

 for (i = 0; meta_zones[i].mz_size != 0; i++) {
  if (meta_zones[i].mz_size >= size)
   break;
 }

 return (meta_zones[i].mz_zone);
}
