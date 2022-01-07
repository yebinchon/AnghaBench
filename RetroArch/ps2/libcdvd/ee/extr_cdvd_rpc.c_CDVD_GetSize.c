
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDVD_GETSIZE ;
 int SifCallRpc (int *,int ,int ,void*,int ,void*,int,int ,int ) ;
 int cd0 ;
 int cdvd_inited ;
 unsigned int* sbuff ;

unsigned int CDVD_GetSize()
{
    if (!cdvd_inited)
        return -1;

    SifCallRpc(&cd0, CDVD_GETSIZE, 0, (void *)(&sbuff[0]), 0, (void *)(&sbuff[0]), 4, 0, 0);

    return sbuff[0];
}
