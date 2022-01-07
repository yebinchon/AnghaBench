
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int NOTE_WRITE ;
 int VQ_MOUNT ;
 int lock_vnode_and_post (int ,int ) ;
 int vfs_event_signal (int *,int ,intptr_t) ;

void
vfs_notify_mount(vnode_t pdvp)
{
 vfs_event_signal(((void*)0), VQ_MOUNT, (intptr_t)((void*)0));
 lock_vnode_and_post(pdvp, NOTE_WRITE);
}
