
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt8 ;
typedef int UInt32 ;


 int MP4DecConfigDescrTag ;
 int MP4DecSpecificDescrTag ;
 int MP4ESDescrTag ;
 int * calloc (int,int) ;
 int memcpy (int *,int *,int) ;
 long noErr ;
 int readDescr (int **,int*) ;

__attribute__((used)) static long ReadESDSDescExt(void* descExt, UInt8 **buffer, UInt32 *size, int versionFlags)
{
    UInt8 *esds = (UInt8*)descExt;
    int tag, len;
    *size = 0;

    if (versionFlags)
        esds += 4;
    readDescr(&esds, &tag);
    esds += 2;
    if (tag == MP4ESDescrTag)
        esds++;

    readDescr(&esds, &tag);
    if (tag == MP4DecConfigDescrTag)
    {
        esds++;
        esds++;
        esds += 3;
        esds += 4;
        esds += 4;

        len = readDescr(&esds, &tag);
        if (tag == MP4DecSpecificDescrTag)
        {
            *buffer = calloc(1, len + 8);
            if (*buffer)
            {
                memcpy(*buffer, esds, len);
                *size = len;
            }
        }
    }

    return noErr;
}
