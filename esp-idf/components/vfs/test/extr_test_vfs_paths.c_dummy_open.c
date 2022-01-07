
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int called; int match_path; } ;
typedef TYPE_1__ dummy_vfs_t ;


 int ENOENT ;
 int errno ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int dummy_open(void* ctx, const char * path, int flags, int mode)
{
    dummy_vfs_t* dummy = (dummy_vfs_t*) ctx;
    dummy->called = 1;
    if (strcmp(dummy->match_path, path) == 0) {
        return 1;
    }
    errno = ENOENT;
    return -1;
}
