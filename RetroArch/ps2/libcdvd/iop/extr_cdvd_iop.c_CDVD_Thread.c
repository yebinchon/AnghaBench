
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * AllocSysMemory (int ,int,int *) ;
 int CDVD_IRX ;
 int CDVD_rpc_server ;
 int GetThreadId () ;
 int SleepThread () ;
 int * buffer ;
 int printf (char*) ;
 int qd ;
 int sceSifInitRpc (int ) ;
 int sceSifRegisterRpc (int *,int ,int ,void*,int ,int ,int *) ;
 int sceSifRpcLoop (int *) ;
 int sceSifSetRpcQueue (int *,int ) ;
 int sd0 ;

void CDVD_Thread(void *param)
{




    sceSifInitRpc(0);



    buffer = AllocSysMemory(0, 0x4C00, ((void*)0));
    if (buffer == ((void*)0)) {




        SleepThread();
    }

    sceSifSetRpcQueue(&qd, GetThreadId());
    sceSifRegisterRpc(&sd0, CDVD_IRX, CDVD_rpc_server, (void *)buffer, 0, 0, &qd);
    sceSifRpcLoop(&qd);
}
