
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SNAPSHOT_OP_RENAME ;
 int __fs_snapshot (int ,int,char const*,char const*,int *,int ) ;

int
fs_snapshot_rename(int dirfd, const char *old, const char *new, uint32_t flags)
{
 return __fs_snapshot(SNAPSHOT_OP_RENAME, dirfd, old, new, ((void*)0), flags);
}
