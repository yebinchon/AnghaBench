
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int size ;
typedef int fileHandle_t ;
struct TYPE_4__ {int size; unsigned char* reachabilities; } ;
typedef TYPE_1__ aas_routingcache_t ;
struct TYPE_5__ {int (* FS_Read ) (unsigned char*,int,int ) ;} ;


 scalar_t__ GetMemory (int) ;
 TYPE_2__ botimport ;
 int stub1 (int*,int,int ) ;
 int stub2 (unsigned char*,int,int ) ;

aas_routingcache_t *AAS_ReadCache(fileHandle_t fp)
{
 int size;
 aas_routingcache_t *cache;

 botimport.FS_Read(&size, sizeof(size), fp);
 cache = (aas_routingcache_t *) GetMemory(size);
 cache->size = size;
 botimport.FS_Read((unsigned char *)cache + sizeof(size), size - sizeof(size), fp);
 cache->reachabilities = (unsigned char *) cache + sizeof(aas_routingcache_t) - sizeof(unsigned short) +
  (size - sizeof(aas_routingcache_t) + sizeof(unsigned short)) / 3 * 2;
 return cache;
}
