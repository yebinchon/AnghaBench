
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDVD_DISKREADY ;
 int SifCallRpc (int *,int ,int ,void*,int,void*,int,int ,int ) ;
 int cd0 ;
 int cdvd_inited ;
 int* sbuff ;

int CDVD_DiskReady(int mode)
{
    if (!cdvd_inited)
        return -1;

    sbuff[0] = mode;

    SifCallRpc(&cd0, CDVD_DISKREADY, 0, (void *)(&sbuff[0]), 4, (void *)(&sbuff[0]), 4, 0, 0);

    return sbuff[0];
}
