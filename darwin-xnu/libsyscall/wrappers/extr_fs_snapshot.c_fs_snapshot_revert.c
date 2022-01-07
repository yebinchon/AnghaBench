
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SNAPSHOT_OP_REVERT ;
 int __fs_snapshot (int ,int,char const*,int *,int *,int ) ;

int
fs_snapshot_revert(int dirfd, const char *name, uint32_t flags)
{
    return __fs_snapshot(SNAPSHOT_OP_REVERT, dirfd, name, ((void*)0), ((void*)0), flags);
}
