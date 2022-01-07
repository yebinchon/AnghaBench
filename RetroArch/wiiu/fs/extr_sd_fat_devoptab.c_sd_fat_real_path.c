
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* mount_path; } ;
typedef TYPE_1__ sd_fat_private_t ;


 scalar_t__ malloc (int) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *sd_fat_real_path (const char *path, sd_fat_private_t *dev)
{

    if (!path)
        return ((void*)0);


    if (strchr(path, ':') != ((void*)0)) {
        path = strchr(path, ':') + 1;
    }

    int mount_len = strlen(dev->mount_path);

    char *new_name = (char*)malloc(mount_len + strlen(path) + 1);
    if(new_name) {
        strcpy(new_name, dev->mount_path);
        strcpy(new_name + mount_len, path);
        return new_name;
    }
    return new_name;
}
