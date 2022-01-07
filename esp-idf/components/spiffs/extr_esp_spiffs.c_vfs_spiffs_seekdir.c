
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long offset; int path; int d; } ;
typedef TYPE_1__ vfs_spiffs_dir_t ;
struct spiffs_dirent {char* name; } ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_2__ esp_spiffs_t ;
typedef int DIR ;


 int SPIFFS_clearerr (int ) ;
 int SPIFFS_closedir (int *) ;
 int SPIFFS_errno (int ) ;
 int SPIFFS_opendir (int ,int *,int *) ;
 scalar_t__ SPIFFS_readdir (int *,struct spiffs_dirent*) ;
 int assert (int *) ;
 int errno ;
 int spiffs_res_to_errno (int ) ;
 size_t strlen (int ) ;
 scalar_t__ strncasecmp (int ,char const*,size_t) ;

__attribute__((used)) static void vfs_spiffs_seekdir(void* ctx, DIR* pdir, long offset)
{
    assert(pdir);
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    vfs_spiffs_dir_t * dir = (vfs_spiffs_dir_t *)pdir;
    struct spiffs_dirent tmp;
    if (offset < dir->offset) {

        SPIFFS_closedir(&dir->d);
        if (!SPIFFS_opendir(efs->fs, ((void*)0), &dir->d)) {
            errno = spiffs_res_to_errno(SPIFFS_errno(efs->fs));
            SPIFFS_clearerr(efs->fs);
            return;
        }
        dir->offset = 0;
    }
    while (dir->offset < offset) {
        if (SPIFFS_readdir(&dir->d, &tmp) == 0) {
            errno = spiffs_res_to_errno(SPIFFS_errno(efs->fs));
            SPIFFS_clearerr(efs->fs);
            return;
        }
        size_t plen = strlen(dir->path);
        if (plen > 1) {
            if (strncasecmp(dir->path, (const char *)tmp.name, plen) || tmp.name[plen] != '/' || !tmp.name[plen+1]) {
                continue;
            }
        }
        dir->offset++;
    }
}
