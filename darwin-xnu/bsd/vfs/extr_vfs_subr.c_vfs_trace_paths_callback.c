
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_4__ {int mnt_flag; } ;


 int MNT_LOCAL ;
 int VFS_RETURNED ;
 int VNODE_ITERATE_ALL ;
 int vnode_iterate (TYPE_1__*,int ,int ,void*) ;
 int vnode_trace_path_callback ;

__attribute__((used)) static int vfs_trace_paths_callback(mount_t mp, void *arg) {
 if (mp->mnt_flag & MNT_LOCAL)
  vnode_iterate(mp, VNODE_ITERATE_ALL, vnode_trace_path_callback, arg);

 return VFS_RETURNED;
}
