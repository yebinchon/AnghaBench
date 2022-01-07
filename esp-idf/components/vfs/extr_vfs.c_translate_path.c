
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ path_prefix_len; int path_prefix; } ;
typedef TYPE_1__ vfs_entry_t ;


 int assert (int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,int ,scalar_t__) ;

__attribute__((used)) static const char* translate_path(const vfs_entry_t* vfs, const char* src_path)
{
    assert(strncmp(src_path, vfs->path_prefix, vfs->path_prefix_len) == 0);
    if (strlen(src_path) == vfs->path_prefix_len) {

        return "/";
    }
    return src_path + vfs->path_prefix_len;
}
