
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dirTocEntry {int fileProperties; int filenameLength; scalar_t__* filename; int fileLBA; int fileSize; } ;
struct TocEntry {int fileProperties; scalar_t__* filename; int fileLBA; int fileSize; } ;
struct TYPE_2__ {int filesystemType; } ;


 TYPE_1__ CDVolDesc ;
 int strncpy (scalar_t__*,scalar_t__*,int) ;
 int strtok (scalar_t__*,char*) ;

void TocEntryCopy(struct TocEntry *tocEntry, struct dirTocEntry *internalTocEntry)
{
    int i;
    int filenamelen;

    tocEntry->fileSize = internalTocEntry->fileSize;
    tocEntry->fileLBA = internalTocEntry->fileLBA;
    tocEntry->fileProperties = internalTocEntry->fileProperties;

    if (CDVolDesc.filesystemType == 2) {

        filenamelen = internalTocEntry->filenameLength / 2;

        for (i = 0; i < filenamelen; i++)
            tocEntry->filename[i] = internalTocEntry->filename[(i << 1) + 1];
    } else {
        filenamelen = internalTocEntry->filenameLength;


        strncpy(tocEntry->filename, internalTocEntry->filename, 128);
    }

    tocEntry->filename[filenamelen] = 0;

    if (!(tocEntry->fileProperties & 0x02)) {

        strtok(tocEntry->filename, ";");
    }
}
