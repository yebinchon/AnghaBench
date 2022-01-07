
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TocEntry {int dummy; } ;


 int CDVD_FINDFILE ;
 int SifCallRpc (int *,int ,int ,void*,int,void*,int,int ,int ) ;
 int cd0 ;
 int cdvd_inited ;
 int memcpy (struct TocEntry*,int*,int) ;
 int* sbuff ;
 int strncpy (char*,char const*,int) ;

int CDVD_FindFile(const char *fname, struct TocEntry *tocEntry)
{
    if (!cdvd_inited)
        return -1;

    strncpy((char *)&sbuff, fname, 1024);

    SifCallRpc(&cd0, CDVD_FINDFILE, 0, (void *)(&sbuff[0]), 1024, (void *)(&sbuff[0]), sizeof(struct TocEntry) + 1024, 0, 0);

    memcpy(tocEntry, &sbuff[256], sizeof(struct TocEntry));

    return sbuff[0];
}
