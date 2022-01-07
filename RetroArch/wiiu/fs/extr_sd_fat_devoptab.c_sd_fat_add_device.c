
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* mount_path; char* name; struct TYPE_6__* deviceData; scalar_t__ pMutex; void* pCmd; void* pClient; } ;
typedef TYPE_1__ sd_fat_private_t ;
typedef TYPE_1__ devoptab_t ;
typedef int OSMutex ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOMEM ;
 int OSInitMutex (scalar_t__) ;
 int STD_MAX ;
 int devops_sd_fat ;
 TYPE_1__** devoptab_list ;
 int errno ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int memcpy (TYPE_1__*,int *,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int sd_fat_add_device (const char *name, const char *mount_path, void *pClient, void *pCmd)
{
    devoptab_t *dev = ((void*)0);
    char *devname = ((void*)0);
    char *devpath = ((void*)0);
    int i;


    if (!name) {
        errno = EINVAL;
        return -1;
    }


    dev = (devoptab_t *) malloc(sizeof(devoptab_t) + strlen(name) + 1);
    if (!dev) {
        errno = ENOMEM;
        return -1;
    }


    devname = (char*)(dev + 1);
    strcpy(devname, name);


    sd_fat_private_t *priv = (sd_fat_private_t *)malloc(sizeof(sd_fat_private_t) + strlen(mount_path) + 1);
    if(!priv) {
        free(dev);
        errno = ENOMEM;
        return -1;
    }

    devpath = (char*)(priv+1);
    strcpy(devpath, mount_path);


    priv->mount_path = devpath;
    priv->pClient = pClient;
    priv->pCmd = pCmd;
    priv->pMutex = malloc(sizeof(OSMutex));

    if(!priv->pMutex) {
        free(dev);
        free(priv);
        errno = ENOMEM;
        return -1;
    }

    OSInitMutex(priv->pMutex);


    memcpy(dev, &devops_sd_fat, sizeof(devoptab_t));
    dev->name = devname;
    dev->deviceData = priv;


    for (i = 3; i < STD_MAX; i++) {
        if (devoptab_list[i] == devoptab_list[0]) {
            devoptab_list[i] = dev;
            return 0;
        }
    }


    free(priv);
    free(dev);


    errno = EADDRNOTAVAIL;
    return -1;
}
