
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SNAPSHOT_OP_CREATE ;
 int __fs_snapshot (int ,int,char const*,int *,int *,int ) ;

int
fs_snapshot_create(int dirfd, const char *name, uint32_t flags)
{
 return __fs_snapshot(SNAPSHOT_OP_CREATE, dirfd, name, ((void*)0), ((void*)0), flags);
}
