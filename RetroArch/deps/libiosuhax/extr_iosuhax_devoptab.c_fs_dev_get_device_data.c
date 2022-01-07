
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fs_dev_private_t ;
struct TYPE_3__ {scalar_t__ deviceData; scalar_t__ name; } ;
typedef TYPE_1__ devoptab_t ;


 int STD_MAX ;
 TYPE_1__** devoptab_list ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 int strncpy (char*,char const*,int) ;
 int strtok (char*,char*) ;

__attribute__((used)) static fs_dev_private_t *fs_dev_get_device_data(const char *path)
{
    const devoptab_t *devoptab = ((void*)0);
    char name[128] = {0};
    int i;

    if(!path)
        return ((void*)0);


    strncpy(name, path, 127);
    strtok(name, ":/");





    for (i = 3; i < STD_MAX; i++) {
        devoptab = devoptab_list[i];
        if (devoptab && devoptab->name) {
            if (strcmp(name, devoptab->name) == 0) {
                return (fs_dev_private_t *)devoptab->deviceData;
            }
        }
    }

    return ((void*)0);
}
