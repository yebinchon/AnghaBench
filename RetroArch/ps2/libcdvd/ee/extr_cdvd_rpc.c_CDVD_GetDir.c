
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TocEntry {int dummy; } ;
typedef enum CDVD_getMode { ____Placeholder_CDVD_getMode } CDVD_getMode ;


 int CDVD_GETDIR ;
 int SifCallRpc (int *,int ,int ,void*,int,void*,int,int ,int ) ;
 int SifWriteBackDCache (struct TocEntry*,unsigned int) ;
 int cd0 ;
 int cdvd_inited ;
 unsigned int* sbuff ;
 int strncpy (char*,char const*,int) ;

int CDVD_GetDir(const char *pathname, const char *extensions, enum CDVD_getMode getMode, struct TocEntry tocEntry[], unsigned int req_entries, char *new_pathname)
{
    unsigned int num_entries;

    if (!cdvd_inited)
        return -1;


    strncpy((char *)sbuff, pathname, 1023);


    if (extensions == ((void*)0)) {

        sbuff[1024 / 4] = 0;
    } else {
        strncpy((char *)&sbuff[1024 / 4], extensions, 127);
    }

    sbuff[1152 / 4] = getMode;

    sbuff[1156 / 4] = (int)tocEntry;

    sbuff[1160 / 4] = req_entries;

    SifWriteBackDCache(tocEntry, req_entries * sizeof(struct TocEntry));


    SifCallRpc(&cd0, CDVD_GETDIR, 0, (void *)(&sbuff[0]), 1024 + 128 + 4 + 4 + 4, (void *)(&sbuff[0]), 4 + 1024, 0, 0);

    num_entries = sbuff[0];

    if (new_pathname != ((void*)0))
        strncpy(new_pathname, (char *)&sbuff[1], 1023);

    return (num_entries);
}
