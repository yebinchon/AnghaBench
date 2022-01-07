
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int path; scalar_t__ offset; int d; } ;
typedef TYPE_1__ vfs_spiffs_dir_t ;
struct TYPE_6__ {int fs; } ;
typedef TYPE_2__ esp_spiffs_t ;
typedef int DIR ;


 int ENOMEM ;
 int SPIFFS_OBJ_NAME_LEN ;
 int SPIFFS_clearerr (int ) ;
 int SPIFFS_errno (int ) ;
 int SPIFFS_opendir (int ,char const*,int *) ;
 int assert (char const*) ;
 TYPE_1__* calloc (int,int) ;
 int errno ;
 int free (TYPE_1__*) ;
 int spiffs_res_to_errno (int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static DIR* vfs_spiffs_opendir(void* ctx, const char* name)
{
    assert(name);
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    vfs_spiffs_dir_t * dir = calloc(1, sizeof(vfs_spiffs_dir_t));
    if (!dir) {
        errno = ENOMEM;
        return ((void*)0);
    }
    if (!SPIFFS_opendir(efs->fs, name, &dir->d)) {
        free(dir);
        errno = spiffs_res_to_errno(SPIFFS_errno(efs->fs));
        SPIFFS_clearerr(efs->fs);
        return ((void*)0);
    }
    dir->offset = 0;
    strlcpy(dir->path, name, SPIFFS_OBJ_NAME_LEN);
    return (DIR*) dir;
}
