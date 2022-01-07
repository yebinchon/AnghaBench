
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int offset; } ;
typedef TYPE_1__ vfs_entry_t ;
struct _reent {int dummy; } ;
typedef int __errno_r ;
struct TYPE_10__ {int dd_vfs_idx; } ;
typedef TYPE_2__ DIR ;


 int CHECK_AND_CALLP (TYPE_2__*,struct _reent*,TYPE_1__ const*,TYPE_2__* (*) (char const*),char const*) ;
 int ENOENT ;
 struct _reent* __getreent () ;
 TYPE_1__* get_vfs_for_path (char const*) ;
 char* translate_path (TYPE_1__ const*,char const*) ;

DIR* opendir(const char* name)
{
    const vfs_entry_t* vfs = get_vfs_for_path(name);
    struct _reent* r = __getreent();
    if (vfs == ((void*)0)) {
        __errno_r(r) = ENOENT;
        return ((void*)0);
    }
    const char* path_within_vfs = translate_path(vfs, name);
    DIR* ret;
    CHECK_AND_CALLP(ret, r, vfs, opendir, path_within_vfs);
    if (ret != ((void*)0)) {
        ret->dd_vfs_idx = vfs->offset;
    }
    return ret;
}
