
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dirTocEntry {int length; int fileProperties; } ;
struct TocEntry {char* filename; } ;
struct TYPE_2__ {scalar_t__ valid; char* cache; int cache_size; int sector_num; scalar_t__ cache_offset; } ;


 int CACHE_NEXT ;
 int CACHE_START ;
 scalar_t__ CDVD_Cache_Dir (char*,int ) ;
 TYPE_1__ CachedDirInfo ;
 scalar_t__ ComparePath (char*) ;
 int FALSE ;
 scalar_t__ MATCH ;
 scalar_t__ TRUE ;
 int TocEntryCopy (struct TocEntry*,struct dirTocEntry*) ;
 int _splitpath (char const*,char*,char*) ;
 int printf (char*,...) ;
 scalar_t__ strcasecmp (char*,char*) ;

int CDVD_findfile(const char *fname, struct TocEntry *tocEntry)
{
    static char filename[128 + 1];
    static char pathname[1024 + 1];

    struct dirTocEntry *tocEntryPointer;





    _splitpath(fname, pathname, filename);
    if ((CachedDirInfo.valid == TRUE) && (ComparePath(pathname) == MATCH)) {



        tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;

        for (; tocEntryPointer < (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048)); tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length)) {
            if (tocEntryPointer->length == 0) {




                tocEntryPointer = (struct dirTocEntry *)(CachedDirInfo.cache + (((((char *)tocEntryPointer - CachedDirInfo.cache) / 2048) + 1) * 2048));
            }

            if (tocEntryPointer >= (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048))) {

                break;
            }

            if ((tocEntryPointer->fileProperties & 0x02) == 0) {

                TocEntryCopy(tocEntry, tocEntryPointer);

                if (strcasecmp(tocEntry->filename, filename) == 0) {

                    return TRUE;
                }
            }
        }




        if (CachedDirInfo.cache_size == CachedDirInfo.sector_num)
            return FALSE;


        if (CachedDirInfo.cache_offset == 0) {

            if (CDVD_Cache_Dir(pathname, CACHE_NEXT) != TRUE)
                return FALSE;
        } else {

            if (CDVD_Cache_Dir(pathname, CACHE_START) != TRUE)
                return FALSE;
        }
    } else {




        if (CDVD_Cache_Dir(pathname, CACHE_START) != TRUE) {




            return FALSE;
        }
    }







    while (CachedDirInfo.cache_size > 0) {
        tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;

        if (CachedDirInfo.cache_offset == 0)
            tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length);

        for (; tocEntryPointer < (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048)); tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length)) {
            if (tocEntryPointer->length == 0) {





                tocEntryPointer = (struct dirTocEntry *)(CachedDirInfo.cache + (((((char *)tocEntryPointer - CachedDirInfo.cache) / 2048) + 1) * 2048));
            }

            if (tocEntryPointer >= (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048))) {

                break;
            }

            TocEntryCopy(tocEntry, tocEntryPointer);

            if (strcasecmp(tocEntry->filename, filename) == 0) {




                return TRUE;
            }




        }





        CDVD_Cache_Dir(pathname, CACHE_NEXT);
    }







    return FALSE;
}
