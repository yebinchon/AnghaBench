
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sec_t ;
struct TYPE_4__ {int bytesPerSector; } ;
typedef TYPE_1__ CACHE ;


 int _FAT_cache_writePartialSector (TYPE_1__*,void const*,int ,int ,int ) ;

__attribute__((used)) static inline bool _FAT_cache_writeSector (CACHE* cache, const void* buffer, sec_t sector) {
 return _FAT_cache_writePartialSector (cache, buffer, sector, 0, cache->bytesPerSector);
}
