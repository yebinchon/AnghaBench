
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDVD_STOP ;
 int SifCallRpc (int *,int ,int ,void*,int ,void*,int ,int ,int ) ;
 int cd0 ;
 int cdvd_inited ;
 int * sbuff ;

void CDVD_Stop()
{
    if (!cdvd_inited)
        return;

    SifCallRpc(&cd0, CDVD_STOP, 0, (void *)(&sbuff[0]), 0, (void *)(&sbuff[0]), 0, 0, 0);

    return;
}
