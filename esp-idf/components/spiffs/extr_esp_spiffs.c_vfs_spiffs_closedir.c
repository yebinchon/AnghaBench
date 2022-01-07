
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d; } ;
typedef TYPE_1__ vfs_spiffs_dir_t ;
struct TYPE_5__ {int fs; } ;
typedef TYPE_2__ esp_spiffs_t ;
typedef int DIR ;


 int SPIFFS_clearerr (int ) ;
 int SPIFFS_closedir (int *) ;
 int SPIFFS_errno (int ) ;
 int assert (int *) ;
 int errno ;
 int free (TYPE_1__*) ;
 int spiffs_res_to_errno (int ) ;

__attribute__((used)) static int vfs_spiffs_closedir(void* ctx, DIR* pdir)
{
    assert(pdir);
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    vfs_spiffs_dir_t * dir = (vfs_spiffs_dir_t *)pdir;
    int res = SPIFFS_closedir(&dir->d);
    free(dir);
    if (res < 0) {
        errno = spiffs_res_to_errno(SPIFFS_errno(efs->fs));
        SPIFFS_clearerr(efs->fs);
        return -1;
    }
    return res;
}
