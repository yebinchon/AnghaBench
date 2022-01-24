#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* mount_path; char* name; struct TYPE_6__* deviceData; scalar_t__ pMutex; void* pCmd; void* pClient; } ;
typedef  TYPE_1__ sd_fat_private_t ;
typedef  TYPE_1__ devoptab_t ;
typedef  int /*<<< orphan*/  OSMutex ;

/* Variables and functions */
 int /*<<< orphan*/  EADDRNOTAVAIL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int STD_MAX ; 
 int /*<<< orphan*/  devops_sd_fat ; 
 TYPE_1__** devoptab_list ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6 (const char *name, const char *mount_path, void *pClient, void *pCmd)
{
    devoptab_t *dev = NULL;
    char *devname = NULL;
    char *devpath = NULL;
    int i;

    /* Sanity check */
    if (!name) {
        errno = EINVAL;
        return -1;
    }

    /* Allocate a devoptab for this device */
    dev = (devoptab_t *) FUNC2(sizeof(devoptab_t) + FUNC5(name) + 1);
    if (!dev) {
        errno = ENOMEM;
        return -1;
    }

    /* Use the space allocated at the end of the devoptab for storing the device name */
    devname = (char*)(dev + 1);
    FUNC4(devname, name);

    /* create private data */
    sd_fat_private_t *priv = (sd_fat_private_t *)FUNC2(sizeof(sd_fat_private_t) + FUNC5(mount_path) + 1);
    if(!priv) {
        FUNC1(dev);
        errno = ENOMEM;
        return -1;
    }

    devpath = (char*)(priv+1);
    FUNC4(devpath, mount_path);

    /* setup private data */
    priv->mount_path = devpath;
    priv->pClient = pClient;
    priv->pCmd = pCmd;
    priv->pMutex = FUNC2(sizeof(OSMutex));

    if(!priv->pMutex) {
        FUNC1(dev);
        FUNC1(priv);
        errno = ENOMEM;
        return -1;
    }

    FUNC0(priv->pMutex);

    /* Setup the devoptab */
    FUNC3(dev, &devops_sd_fat, sizeof(devoptab_t));
    dev->name = devname;
    dev->deviceData = priv;

    /* Add the device to the devoptab table (if there is a free slot) */
    for (i = 3; i < STD_MAX; i++) {
        if (devoptab_list[i] == devoptab_list[0]) {
            devoptab_list[i] = dev;
            return 0;
        }
    }

    /* failure, free all memory */
    FUNC1(priv);
    FUNC1(dev);

    /* If we reach here then there are no free slots in the devoptab table for this device */
    errno = EADDRNOTAVAIL;
    return -1;
}