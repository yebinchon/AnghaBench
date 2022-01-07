
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum Cache_getMode { ____Placeholder_Cache_getMode } Cache_getMode ;
struct TYPE_4__ {scalar_t__ tocLBA; int tocSize; } ;
struct TYPE_6__ {TYPE_1__ rootToc; } ;
struct TYPE_5__ {scalar_t__ valid; scalar_t__ cache_offset; void* cache_size; void* sector_num; scalar_t__ sector_start; char* pathname; int cache; scalar_t__ path_depth; } ;


 int CACHE_START ;
 scalar_t__ CDVD_GetVolumeDescriptor () ;
 TYPE_3__ CDVolDesc ;
 TYPE_2__ CachedDirInfo ;
 scalar_t__ ComparePath (char const*) ;
 int FALSE ;
 int FindPath (char*) ;
 scalar_t__ MATCH ;
 void* MAX_DIR_CACHE_SECTORS ;
 scalar_t__ ReadSect (scalar_t__,void*,int ,int *) ;
 scalar_t__ SUBDIR ;
 scalar_t__ TRUE ;
 int cdReadMode ;
 int isValidDisc () ;
 int printf (char*,...) ;
 int sceCdDiskReady (int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;

int CDVD_Cache_Dir(const char *pathname, enum Cache_getMode getMode)
{


    static char dirname[1024];

    int path_len;






    if (CachedDirInfo.valid == TRUE) {


        if (ComparePath(pathname) == MATCH) {





            if (getMode == CACHE_START) {




                if (CachedDirInfo.cache_offset == 0) {






                    CachedDirInfo.valid = TRUE;
                    return TRUE;
                } else {
                    CachedDirInfo.cache_offset = 0;
                    CachedDirInfo.cache_size = CachedDirInfo.sector_num;

                    if (CachedDirInfo.cache_size > MAX_DIR_CACHE_SECTORS)
                        CachedDirInfo.cache_size = MAX_DIR_CACHE_SECTORS;


                    if (ReadSect(CachedDirInfo.sector_start + CachedDirInfo.cache_offset, CachedDirInfo.cache_size, CachedDirInfo.cache, &cdReadMode) != TRUE) {




                        CachedDirInfo.valid = FALSE;
                        return FALSE;
                    }

                    CachedDirInfo.valid = TRUE;
                    return TRUE;
                }
            } else
            {


                CachedDirInfo.cache_offset += CachedDirInfo.cache_size;

                CachedDirInfo.cache_size = CachedDirInfo.sector_num - CachedDirInfo.cache_offset;

                if (CachedDirInfo.cache_size > MAX_DIR_CACHE_SECTORS)
                    CachedDirInfo.cache_size = MAX_DIR_CACHE_SECTORS;


                if (ReadSect(CachedDirInfo.sector_start + CachedDirInfo.cache_offset, CachedDirInfo.cache_size, CachedDirInfo.cache, &cdReadMode) != TRUE) {




                    CachedDirInfo.valid = FALSE;
                    return FALSE;
                }

                CachedDirInfo.valid = TRUE;
                return TRUE;
            }
        } else
        {
            if (ComparePath(pathname) == SUBDIR) {







                if (CachedDirInfo.cache_offset != 0) {
                    CachedDirInfo.cache_offset = 0;
                    CachedDirInfo.cache_size = CachedDirInfo.sector_num;
                    if (CachedDirInfo.cache_size > MAX_DIR_CACHE_SECTORS)
                        CachedDirInfo.cache_size = MAX_DIR_CACHE_SECTORS;


                    if (ReadSect(CachedDirInfo.sector_start + CachedDirInfo.cache_offset, CachedDirInfo.cache_size, CachedDirInfo.cache, &cdReadMode) != TRUE) {




                        CachedDirInfo.valid = FALSE;
                        return FALSE;
                    }
                }


                path_len = strlen(CachedDirInfo.pathname);
                strcpy(dirname, pathname + path_len);






                return (FindPath(dirname));
            }
        }
    }
    if (!isValidDisc()) {




        return -1;
    }

    sceCdDiskReady(0);


    if (CDVD_GetVolumeDescriptor() != TRUE) {




        return -1;
    }





    CachedDirInfo.path_depth = 0;

    strcpy(CachedDirInfo.pathname, "");


    CachedDirInfo.cache_offset = 0;
    CachedDirInfo.sector_start = CDVolDesc.rootToc.tocLBA;
    CachedDirInfo.sector_num = (CDVolDesc.rootToc.tocSize >> 11) + ((CDVolDesc.rootToc.tocSize & 2047) != 0);

    CachedDirInfo.cache_size = CachedDirInfo.sector_num;

    if (CachedDirInfo.cache_size > MAX_DIR_CACHE_SECTORS)
        CachedDirInfo.cache_size = MAX_DIR_CACHE_SECTORS;



    if (ReadSect(CachedDirInfo.sector_start + CachedDirInfo.cache_offset, CachedDirInfo.cache_size, CachedDirInfo.cache, &cdReadMode) != TRUE) {




        CachedDirInfo.valid = FALSE;
        return FALSE;
    }
    strcpy(dirname, pathname);

    return (FindPath(dirname));
}
