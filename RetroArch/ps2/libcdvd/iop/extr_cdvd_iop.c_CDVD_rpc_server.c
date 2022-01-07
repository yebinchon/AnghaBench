
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CDVDRpc_DiskReady (unsigned int*) ;
 void* CDVDRpc_FindFile (unsigned int*) ;
 void* CDVDRpc_FlushCache () ;
 void* CDVDRpc_Getdir (unsigned int*) ;
 void* CDVDRpc_Stop () ;
 void* CDVDRpc_TrayReq (unsigned int*) ;







void *CDVD_rpc_server(int fno, void *data, int size)
{

    switch (fno) {
        case 132:
            return CDVDRpc_FindFile((unsigned *)data);
        case 130:
            return CDVDRpc_Getdir((unsigned *)data);
        case 129:
            return CDVDRpc_Stop();
        case 128:
            return CDVDRpc_TrayReq((unsigned *)data);
        case 133:
            return CDVDRpc_DiskReady((unsigned *)data);
        case 131:
            return CDVDRpc_FlushCache();
    }

    return ((void*)0);
}
