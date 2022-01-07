
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int called; } ;
typedef TYPE_1__ dummy_vfs_t ;
typedef int DIR ;


 int free (int *) ;

__attribute__((used)) static int dummy_closedir(void* ctx, DIR* pdir)
{
    dummy_vfs_t* dummy = (dummy_vfs_t*) ctx;
    dummy->called = 1;
    free(pdir);
    return 0;
}
