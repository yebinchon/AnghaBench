
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_fifoinfo; } ;
struct socket {int so_rcv; } ;
struct TYPE_2__ {struct socket* fi_readsock; } ;


 long sbspace (int *) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

int
fifo_freespace(struct vnode *vp, long *count)
{
 struct socket *rsock;
 rsock = vp->v_fifoinfo->fi_readsock;
 socket_lock(rsock, 1);
 *count = sbspace(&rsock->so_rcv);
 socket_unlock(rsock, 1);
 return 0;
}
