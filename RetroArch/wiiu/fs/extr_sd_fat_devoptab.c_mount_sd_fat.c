
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FSCmdBlock ;
typedef int FSClient ;


 int FSAddClient (void*,int) ;
 int FSInit () ;
 int FSInitCmdBlock (void*) ;
 scalar_t__ MountFS (void*,void*,char**) ;
 int free (char*) ;
 void* malloc (int) ;
 int sd_fat_add_device (char const*,char*,void*,void*) ;

int mount_sd_fat(const char *path)
{
    int result = -1;


    void* pClient = malloc(sizeof(FSClient));
    void* pCmd = malloc(sizeof(FSCmdBlock));

    if(!pClient || !pCmd) {

        if(pClient)
            free(pClient);
        if(pCmd)
            free(pCmd);
        return -2;
    }

    FSInit();
    FSInitCmdBlock(pCmd);
    FSAddClient(pClient, -1);

    char *mountPath = ((void*)0);

    if(MountFS(pClient, pCmd, &mountPath) == 0) {
        result = sd_fat_add_device(path, mountPath, pClient, pCmd);
        free(mountPath);
    }

    return result;
}
