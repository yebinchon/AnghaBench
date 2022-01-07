
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSDelClient (void*,int) ;
 int UmountFS (void*,void*,char*) ;
 int free (char*) ;
 int sd_fat_remove_device (char const*,void**,void**,char**) ;

int unmount_sd_fat(const char *path)
{
    void *pClient = 0;
    void *pCmd = 0;
    char *mountPath = 0;

    int result = sd_fat_remove_device(path, &pClient, &pCmd, &mountPath);
    if(result == 0)
    {
        UmountFS(pClient, pCmd, mountPath);
        FSDelClient(pClient, -1);
        free(pClient);
        free(pCmd);
        free(mountPath);

    }
    return result;
}
