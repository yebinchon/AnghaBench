
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t path_prefix_len; int path_prefix; } ;
typedef TYPE_1__ vfs_entry_t ;
typedef scalar_t__ ssize_t ;


 size_t LEN_PATH_PREFIX_IGNORED ;
 scalar_t__ memcmp (char const*,int ,size_t) ;
 TYPE_1__** s_vfs ;
 size_t s_vfs_count ;
 size_t strlen (char const*) ;

__attribute__((used)) static const vfs_entry_t* get_vfs_for_path(const char* path)
{
    const vfs_entry_t* best_match = ((void*)0);
    ssize_t best_match_prefix_len = -1;
    size_t len = strlen(path);
    for (size_t i = 0; i < s_vfs_count; ++i) {
        const vfs_entry_t* vfs = s_vfs[i];
        if (!vfs || vfs->path_prefix_len == LEN_PATH_PREFIX_IGNORED) {
            continue;
        }

        if (len < vfs->path_prefix_len ||
            memcmp(path, vfs->path_prefix, vfs->path_prefix_len) != 0) {
            continue;
        }

        if (vfs->path_prefix_len == 0 && !best_match) {
            best_match = vfs;
            continue;
        }


        if (len > vfs->path_prefix_len &&
                path[vfs->path_prefix_len] != '/') {
            continue;
        }






        if (best_match_prefix_len < (ssize_t) vfs->path_prefix_len) {
            best_match_prefix_len = (ssize_t) vfs->path_prefix_len;
            best_match = vfs;
        }
    }
    return best_match;
}
