
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct vfs_attr {int f_uuid; } ;
typedef int mount_t ;
struct TYPE_2__ {scalar_t__ state; int volume_uuid; scalar_t__ valid_uuid; } ;
typedef TYPE_1__ cp_lock_vfs_callback_arg ;


 int FIODEVICELOCKED ;
 int VFSATTR_INIT (struct vfs_attr*) ;
 int VFSATTR_IS_SUPPORTED (struct vfs_attr*,int ) ;
 int VFSATTR_WANTED (struct vfs_attr*,int ) ;
 int VFS_IOCTL (int ,int ,void*,int ,int ) ;
 int f_uuid ;
 scalar_t__ memcmp (int ,int ,int) ;
 int vfs_context_current () ;
 int vfs_context_kernel () ;
 scalar_t__ vfs_getattr (int ,struct vfs_attr*,int ) ;

__attribute__((used)) static int
cp_lock_vfs_callback(mount_t mp, void *arg)
{
 cp_lock_vfs_callback_arg *callback_arg = (cp_lock_vfs_callback_arg *)arg;

 if (callback_arg->valid_uuid) {
  struct vfs_attr va;
  VFSATTR_INIT(&va);
  VFSATTR_WANTED(&va, f_uuid);

  if (vfs_getattr(mp, &va, vfs_context_current()))
   return 0;

  if (!VFSATTR_IS_SUPPORTED(&va, f_uuid))
   return 0;

  if(memcmp(va.f_uuid, callback_arg->volume_uuid, sizeof(uuid_t)))
   return 0;
 }

 VFS_IOCTL(mp, FIODEVICELOCKED, (void *)(uintptr_t)callback_arg->state, 0, vfs_context_kernel());
 return 0;
}
