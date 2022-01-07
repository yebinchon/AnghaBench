
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SNAPSHOT_OP_MOUNT ;
 int __fs_snapshot (int ,int,char const*,char const*,int *,int ) ;

int
fs_snapshot_mount(int dirfd, const char *dir, const char *snapshot,
    uint32_t flags)
{
 return (__fs_snapshot(SNAPSHOT_OP_MOUNT, dirfd, snapshot, dir,
     ((void*)0), flags));
}
