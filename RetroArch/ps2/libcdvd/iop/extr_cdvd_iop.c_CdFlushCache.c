
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cache_size; scalar_t__ cache_offset; scalar_t__ sector_num; scalar_t__ sector_start; scalar_t__ path_depth; int valid; int pathname; } ;


 TYPE_1__ CachedDirInfo ;
 int FALSE ;
 int TRUE ;
 int strcpy (int ,char*) ;

int CdFlushCache(void)
{
    strcpy(CachedDirInfo.pathname, "");
    CachedDirInfo.valid = FALSE;
    CachedDirInfo.path_depth = 0;
    CachedDirInfo.sector_start = 0;
    CachedDirInfo.sector_num = 0;
    CachedDirInfo.cache_offset = 0;
    CachedDirInfo.cache_size = 0;

    return TRUE;
}
