
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct t_SifDmaTransfer {int size; scalar_t__ attr; struct TocEntry* dest; struct TocEntry* src; } ;
struct dirTocEntry {int length; int fileProperties; } ;
struct TocEntry {int filename; } ;
typedef enum CDVD_getMode { ____Placeholder_CDVD_getMode } CDVD_getMode ;
struct TYPE_2__ {int sector_num; char const* pathname; char* cache; scalar_t__ path_depth; int cache_size; scalar_t__ cache_offset; } ;


 int CACHE_NEXT ;
 int CACHE_START ;
 scalar_t__ CDVD_Cache_Dir (char const*,int ) ;
 int CDVD_GET_DIRS_ONLY ;
 int CDVD_GET_FILES_AND_DIRS ;
 int CDVD_GET_FILES_ONLY ;
 TYPE_1__ CachedDirInfo ;
 int CpuResumeIntr (int) ;
 int CpuSuspendIntr (int*) ;
 scalar_t__ TRUE ;
 scalar_t__ TocEntryCompare (int ,char const*) ;
 int TocEntryCopy (struct TocEntry*,struct dirTocEntry*) ;
 int printf (char*,...) ;
 scalar_t__ sceSifDmaStat (int) ;
 int sceSifSetDma (struct t_SifDmaTransfer*,int) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char const*) ;

int CDVD_GetDir_RPC(const char *pathname, const char *extensions, enum CDVD_getMode getMode, struct TocEntry tocEntry[], unsigned int req_entries)
{
    int matched_entries;
    int dir_entry;

    struct TocEntry localTocEntry;

    struct dirTocEntry *tocEntryPointer;

    int intStatus;

    struct t_SifDmaTransfer dmaStruct;
    int dmaID;

    dmaID = 0;





    matched_entries = 0;


    if (CDVD_Cache_Dir(pathname, CACHE_START) != TRUE) {




        return -1;
    }





    if ((getMode == CDVD_GET_DIRS_ONLY) || (getMode == CDVD_GET_FILES_AND_DIRS)) {

        if (CDVD_Cache_Dir(CachedDirInfo.pathname, CACHE_START) != TRUE) {




            return -1;
        }

        tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;


        tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length);


        if (CachedDirInfo.path_depth == 0)
            tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length);

        dir_entry = 0;

        while (1) {





            for (; tocEntryPointer < (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048)); tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length)) {
                if (tocEntryPointer->length == 0) {




                    tocEntryPointer = (struct dirTocEntry *)(CachedDirInfo.cache + (((((char *)tocEntryPointer - CachedDirInfo.cache) / 2048) + 1) * 2048));
                }

                if (tocEntryPointer >= (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048))) {


                    break;
                }


                if (tocEntryPointer->fileProperties & 0x02) {






                    while (sceSifDmaStat(dmaID) >= 0)
                        ;

                    TocEntryCopy(&localTocEntry, tocEntryPointer);

                    if (dir_entry == 0) {
                        if (CachedDirInfo.path_depth != 0) {




                            strcpy(localTocEntry.filename, "..");
                        }
                    }




                    dmaStruct.src = &localTocEntry;
                    dmaStruct.dest = &tocEntry[matched_entries];
                    dmaStruct.size = sizeof(struct TocEntry);
                    dmaStruct.attr = 0;


                    CpuSuspendIntr(&intStatus);

                    dmaID = sceSifSetDma(&dmaStruct, 1);

                    CpuResumeIntr(intStatus);

                    matched_entries++;
                } else
                {



                }

                dir_entry++;

                if (matched_entries >= req_entries)
                    return (matched_entries);

            }


            if ((CachedDirInfo.cache_offset + CachedDirInfo.cache_size) < CachedDirInfo.sector_num) {
                if (CDVD_Cache_Dir(CachedDirInfo.pathname, CACHE_NEXT) != TRUE) {


                    return -1;
                }
            } else
                break;

            tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;
        }
    }


    if ((getMode == CDVD_GET_FILES_ONLY) || (getMode == CDVD_GET_FILES_AND_DIRS)) {

        if (CDVD_Cache_Dir(CachedDirInfo.pathname, CACHE_START) != TRUE) {




            return -1;
        }

        tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;


        tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length);


        if (CachedDirInfo.path_depth == 0)
            tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length);

        dir_entry = 0;

        while (1) {





            for (; tocEntryPointer < (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048)); tocEntryPointer = (struct dirTocEntry *)((u8 *)tocEntryPointer + tocEntryPointer->length)) {
                if (tocEntryPointer->length == 0) {




                    tocEntryPointer = (struct dirTocEntry *)(CachedDirInfo.cache + (((((char *)tocEntryPointer - CachedDirInfo.cache) / 2048) + 1) * 2048));
                }

                if (tocEntryPointer >= (struct dirTocEntry *)(CachedDirInfo.cache + (CachedDirInfo.cache_size * 2048))) {


                    break;
                }


                if (tocEntryPointer->fileProperties & 0x02) {



                } else
                {


                    while (sceSifDmaStat(dmaID) >= 0)
                        ;

                    TocEntryCopy(&localTocEntry, tocEntryPointer);

                    if (strlen(extensions) > 0) {

                        if (TocEntryCompare(localTocEntry.filename, extensions) == TRUE) {







                            dmaStruct.src = &localTocEntry;
                            dmaStruct.dest = &tocEntry[matched_entries];
                            dmaStruct.size = sizeof(struct TocEntry);
                            dmaStruct.attr = 0;


                            CpuSuspendIntr(&intStatus);

                            dmaID = sceSifSetDma(&dmaStruct, 1);

                            CpuResumeIntr(intStatus);

                            matched_entries++;
                        } else {



                        }
                    } else
                    {







                        dmaStruct.src = &localTocEntry;
                        dmaStruct.dest = &tocEntry[matched_entries];
                        dmaStruct.size = sizeof(struct TocEntry);
                        dmaStruct.attr = 0;


                        CpuSuspendIntr(&intStatus);

                        dmaID = sceSifSetDma(&dmaStruct, 1);

                        CpuResumeIntr(intStatus);

                        matched_entries++;
                    }
                }

                dir_entry++;

                if (matched_entries >= req_entries)
                    return (matched_entries);

            }



            if ((CachedDirInfo.cache_offset + CachedDirInfo.cache_size) < CachedDirInfo.sector_num) {
                if (CDVD_Cache_Dir(CachedDirInfo.pathname, CACHE_NEXT) != TRUE) {


                    return -1;
                }
            } else
                break;

            tocEntryPointer = (struct dirTocEntry *)CachedDirInfo.cache;
        }
    }


    return (matched_entries);
}
