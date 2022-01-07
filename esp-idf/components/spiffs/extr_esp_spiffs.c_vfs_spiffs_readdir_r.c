
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; int path; int d; } ;
typedef TYPE_1__ vfs_spiffs_dir_t ;
struct spiffs_dirent {char* name; int type; } ;
struct dirent {int d_name; int d_type; scalar_t__ d_ino; } ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_2__ esp_spiffs_t ;
typedef int DIR ;


 int SPIFFS_OBJ_NAME_LEN ;
 int SPIFFS_clearerr (int ) ;
 int SPIFFS_errno (int ) ;
 scalar_t__ SPIFFS_readdir (int *,struct spiffs_dirent*) ;
 int assert (int *) ;
 int errno ;
 int snprintf (int ,int ,char*,char*) ;
 int spiffs_res_to_errno (int ) ;
 size_t strlen (int ) ;
 scalar_t__ strncasecmp (int ,char const*,size_t) ;

__attribute__((used)) static int vfs_spiffs_readdir_r(void* ctx, DIR* pdir, struct dirent* entry,
                                struct dirent** out_dirent)
{
    assert(pdir);
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    vfs_spiffs_dir_t * dir = (vfs_spiffs_dir_t *)pdir;
    struct spiffs_dirent out;
    size_t plen;
    char * item_name;
    do {
        if (SPIFFS_readdir(&dir->d, &out) == 0) {
            errno = spiffs_res_to_errno(SPIFFS_errno(efs->fs));
            SPIFFS_clearerr(efs->fs);
            if (!errno) {
                *out_dirent = ((void*)0);
            }
            return errno;
        }
        item_name = (char *)out.name;
        plen = strlen(dir->path);

    } while ((plen > 1) && (strncasecmp(dir->path, (const char*)out.name, plen) || out.name[plen] != '/' || !out.name[plen + 1]));

    if (plen > 1) {
        item_name += plen + 1;
    } else if (item_name[0] == '/') {
        item_name++;
    }
    entry->d_ino = 0;
    entry->d_type = out.type;
    snprintf(entry->d_name, SPIFFS_OBJ_NAME_LEN, "%s", item_name);
    dir->offset++;
    *out_dirent = entry;
    return 0;
}
