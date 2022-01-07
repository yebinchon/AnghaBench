
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pMutex; int mount_path; void* pCmd; void* pClient; } ;
typedef TYPE_1__ sd_fat_private_t ;
struct TYPE_6__ {struct TYPE_6__* deviceData; scalar_t__ name; } ;
typedef TYPE_2__ devoptab_t ;


 int STD_MAX ;
 TYPE_2__** devoptab_list ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;
 int strncpy (char*,char const*,int) ;
 int strtok (char*,char*) ;

__attribute__((used)) static int sd_fat_remove_device (const char *path, void **pClient, void **pCmd, char **mountPath)
{
    const devoptab_t *devoptab = ((void*)0);
    char name[128] = {0};
    int i;


    strncpy(name, path, 127);
    strtok(name, ":/");





    for (i = 3; i < STD_MAX; i++) {
        devoptab = devoptab_list[i];
        if (devoptab && devoptab->name) {
            if (strcmp(name, devoptab->name) == 0) {
                devoptab_list[i] = devoptab_list[0];

                if(devoptab->deviceData)
                {
                    sd_fat_private_t *priv = (sd_fat_private_t *)devoptab->deviceData;
                    *pClient = priv->pClient;
                    *pCmd = priv->pCmd;
                    *mountPath = (char*) malloc(strlen(priv->mount_path)+1);
                    if(*mountPath)
                        strcpy(*mountPath, priv->mount_path);
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
