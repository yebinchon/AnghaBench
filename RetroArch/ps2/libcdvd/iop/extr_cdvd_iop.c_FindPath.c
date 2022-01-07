
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct dirTocEntry {int length; int fileProperties; } ;
struct TocEntry {int fileLBA; int fileSize; int filename; } ;
struct TYPE_4__ {int tocSize; } ;
struct TYPE_6__ {TYPE_1__ rootToc; } ;
struct TYPE_5__ {char* cache; int cache_size; int cache_offset; int sector_num; int sector_start; int valid; scalar_t__ path_depth; scalar_t__* pathname; } ;


 TYPE_3__ CDVolDesc ;
 TYPE_2__ CachedDirInfo ;
 int FALSE ;
 void* MAX_DIR_CACHE_SECTORS ;
 int ReadSect (int,void*,char*,int *) ;
 int TRUE ;
 int TocEntryCopy (struct TocEntry*,struct dirTocEntry*) ;
 int cdReadMode ;
 int isValidDisc () ;
 int printf (char*,...) ;
 int sceCdDiskReady (int ) ;
 scalar_t__ strcasecmp (char*,int ) ;
 int strcat (scalar_t__*,char*) ;
 int strcpy (int ,char*) ;
 char* strrchr (scalar_t__*,char) ;
 char* strtok (char*,char*) ;

int FindPath(char *pathname)
{
    char *dirname;
    char *seperator;

    int dir_entry;
    int found_dir;

    struct dirTocEntry *tocEntryPointer;
    struct TocEntry localTocEntry;

    dirname = strtok(pathname, "\\/");





    if (!isValidDisc())
        return FALSE;

    sceCdDiskReady(0);

    while (dirname != ((void*)0)) {
        found_dir = FALSE;

        tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;


        tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length);

        dir_entry = 0;

        for (; tocEntryPointer < (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048)); tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length)) {

            if (tocEntryPointer->length == 0) {




                tocEntryPointer = (struct dirTocEntry *)(CachedDirInfo.cache + (((((char *)tocEntryPointer - CachedDirInfo.cache) / 2048) + 1) * 2048));
            }

            if (tocEntryPointer >= (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048))) {



                if ((CachedDirInfo.cache_offset + CachedDirInfo.cache_size) < CachedDirInfo.sector_num) {

                    CachedDirInfo.cache_offset += CachedDirInfo.cache_size;
                    CachedDirInfo.cache_size = CachedDirInfo.sector_num - CachedDirInfo.cache_offset;

                    if (CachedDirInfo.cache_size > MAX_DIR_CACHE_SECTORS)
                        CachedDirInfo.cache_size = MAX_DIR_CACHE_SECTORS;

                    if (ReadSect(CachedDirInfo.sector_start + CachedDirInfo.cache_offset, CachedDirInfo.cache_size, CachedDirInfo.cache, &cdReadMode) != TRUE) {




                        CachedDirInfo.valid = FALSE;
                        return FALSE;
                    }

                    tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;
                } else {
                    CachedDirInfo.valid = FALSE;
                    return FALSE;
                }
            }


            if (tocEntryPointer->fileProperties & 0x02) {

                TocEntryCopy(&localTocEntry, tocEntryPointer);


                if (dir_entry == 0) {
                    if (CachedDirInfo.path_depth != 0) {




                        strcpy(localTocEntry.filename, "..");
                    }
                }


                if (strcasecmp(dirname, localTocEntry.filename) == 0) {




                    found_dir = TRUE;

                    if (dir_entry == 0) {



                        if (CachedDirInfo.path_depth > 0)
                            CachedDirInfo.path_depth--;

                        if (CachedDirInfo.path_depth == 0) {


                            CachedDirInfo.pathname[0] = 0;
                        } else {
                            seperator = strrchr(CachedDirInfo.pathname, '/');

                            if (seperator != ((void*)0))
                                *seperator = 0;
                        }
                    } else {


                        strcat(CachedDirInfo.pathname, "/");





                        strcat(CachedDirInfo.pathname, dirname);

                        CachedDirInfo.path_depth++;
                    }



                    break;
                } else {



                }
            }

            dir_entry++;

        }



        if (found_dir != TRUE) {
            CachedDirInfo.valid = FALSE;
            return FALSE;
        }


        dirname = strtok(((void*)0), "\\/");

        CachedDirInfo.sector_start = localTocEntry.fileLBA;
        CachedDirInfo.sector_num = (localTocEntry.fileSize >> 11) + ((CDVolDesc.rootToc.tocSize & 2047) != 0);




        CachedDirInfo.cache_offset = 0;
        CachedDirInfo.cache_size = CachedDirInfo.sector_num;

        if (CachedDirInfo.cache_size > MAX_DIR_CACHE_SECTORS)
            CachedDirInfo.cache_size = MAX_DIR_CACHE_SECTORS;

        if (ReadSect(CachedDirInfo.sector_start + CachedDirInfo.cache_offset, CachedDirInfo.cache_size, CachedDirInfo.cache, &cdReadMode) != TRUE) {





            CachedDirInfo.valid = FALSE;
            return FALSE;
        }
    }






    CachedDirInfo.valid = TRUE;
    return TRUE;
}
