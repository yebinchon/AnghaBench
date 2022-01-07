
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pMutex; int mount_path; int fsaFd; scalar_t__ mounted; } ;
typedef TYPE_1__ fs_dev_private_t ;
struct TYPE_6__ {struct TYPE_6__* deviceData; scalar_t__ name; } ;
typedef TYPE_2__ devoptab_t ;


 int IOSUHAX_FSA_Unmount (int ,int ,int) ;
 int STD_MAX ;
 TYPE_2__** devoptab_list ;
 int free (TYPE_2__*) ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 int strncpy (char*,char const*,int) ;
 int strtok (char*,char*) ;

__attribute__((used)) static int fs_dev_remove_device (const char *path)
{
    const devoptab_t *devoptab = ((void*)0);
    char name[128] = {0};
    int i;

    if(!path)
        return -1;


    strncpy(name, path, 127);
    strtok(name, ":/");





    for (i = 3; i < STD_MAX; i++) {
        devoptab = devoptab_list[i];
        if (devoptab && devoptab->name) {
            if (strcmp(name, devoptab->name) == 0) {
                devoptab_list[i] = devoptab_list[0];

                if(devoptab->deviceData)
                {
                    fs_dev_private_t *priv = (fs_dev_private_t *)devoptab->deviceData;

                    if(priv->mounted)
                        IOSUHAX_FSA_Unmount(priv->fsaFd, priv->mount_path, 2);

                    if(priv->pMutex)
                        free(priv->pMutex);
                    free(devoptab->deviceData);
                }

                free((devoptab_t*)devoptab);
                return 0;
            }
        }
    }

    return -1;
}
