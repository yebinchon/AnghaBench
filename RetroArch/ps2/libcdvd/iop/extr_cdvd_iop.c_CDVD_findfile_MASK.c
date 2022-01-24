#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct dirTocEntry {int length; int fileProperties; } ;
struct TocEntry {char* filename; } ;
struct TYPE_2__ {scalar_t__ valid; char* cache; int cache_size; int sector_num; scalar_t__ cache_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEXT ; 
 int /*<<< orphan*/  CACHE_START ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ CachedDirInfo ; 
 scalar_t__ FUNC1 (char*) ; 
 int FALSE ; 
 scalar_t__ MATCH ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct TocEntry*,struct dirTocEntry*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(const char *fname, struct TocEntry *tocEntry)
{
    static char filename[128 + 1];
    static char pathname[1024 + 1];

    struct dirTocEntry *tocEntryPointer;

#ifdef DEBUG
    printf("CDVD_findfile called\n");
#endif

    FUNC3(fname, pathname, filename);

#ifdef DEBUG
    printf("Trying to find file: %s in directory: %s\n", filename, pathname);
#endif

    //	if ((CachedDirInfo.valid==TRUE)
    //		&& (strcasecmp(pathname, CachedDirInfo.pathname)==0))

    if ((CachedDirInfo.valid == TRUE) && (FUNC1(pathname) == MATCH)) {
        // the directory is already cached, so check through the currently
        // cached chunk of the directory first

        tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;

        for (; tocEntryPointer < (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048)); tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length)) {
            if (tocEntryPointer->length == 0) {
#ifdef DEBUG
                printf("Got a null pointer entry, so either reached end of dir, or end of sector\n");
#endif

                tocEntryPointer = (struct dirTocEntry *)(CachedDirInfo.cache + (((((char *)tocEntryPointer - CachedDirInfo.cache) / 2048) + 1) * 2048));
            }

            if (tocEntryPointer >= (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048))) {
                // reached the end of the cache block
                break;
            }

            if ((tocEntryPointer->fileProperties & 0x02) == 0) {
                // It's a file
                FUNC2(tocEntry, tocEntryPointer);

                if (FUNC5(tocEntry->filename, filename) == 0) {
                    // and it matches !!
                    return TRUE;
                }
            }
        }  // end of for loop



        // If that was the only dir block, and we havent found it, then fail
        if (CachedDirInfo.cache_size == CachedDirInfo.sector_num)
            return FALSE;

        // Otherwise there is more dir to check
        if (CachedDirInfo.cache_offset == 0) {
            // If that was the first block then continue with the next block
            if (FUNC0(pathname, CACHE_NEXT) != TRUE)
                return FALSE;
        } else {
            // otherwise (if that wasnt the first block) then start checking from the start
            if (FUNC0(pathname, CACHE_START) != TRUE)
                return FALSE;
        }
    } else {
#ifdef DEBUG
        printf("Trying to cache directory\n");
#endif
        // The wanted directory wasnt already cached, so cache it now
        if (FUNC0(pathname, CACHE_START) != TRUE) {
#ifdef DEBUG
            printf("Failed to cache directory\n");
#endif

            return FALSE;
        }
    }

// If we've got here, then we have a block of the directory cached, and want to check
// from this point, to the end of the dir
#ifdef DEBUG
    printf("cache_size = %d\n", CachedDirInfo.cache_size);
#endif

    while (CachedDirInfo.cache_size > 0) {
        tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;

        if (CachedDirInfo.cache_offset == 0)
            tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length);

        for (; tocEntryPointer < (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048)); tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length)) {
            if (tocEntryPointer->length == 0) {
#ifdef DEBUG
                printf("Got a null pointer entry, so either reached end of dir, or end of sector\n");
                printf("Offset into cache = %d bytes\n", (char *)tocEntryPointer - CachedDirInfo.cache);
#endif

                tocEntryPointer = (struct dirTocEntry *)(CachedDirInfo.cache + (((((char *)tocEntryPointer - CachedDirInfo.cache) / 2048) + 1) * 2048));
            }

            if (tocEntryPointer >= (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048))) {
                // reached the end of the cache block
                break;
            }

            FUNC2(tocEntry, tocEntryPointer);

            if (FUNC5(tocEntry->filename, filename) == 0) {
#ifdef DEBUG
                printf("Found a matching file\n");
#endif
                // and it matches !!
                return TRUE;
            }

#ifdef DEBUG
            printf("Non-matching file - looking for %s , found %s\n", filename, tocEntry->filename);
#endif
        }  // end of for loop

#ifdef DEBUG
        printf("Reached end of cache block\n");
#endif
        // cache the next block
        FUNC0(pathname, CACHE_NEXT);
    }

// we've run out of dir blocks to cache, and still not found it, so fail

#ifdef DEBUG
    printf("CDVD_findfile: could not find file\n");
#endif

    return FALSE;
}