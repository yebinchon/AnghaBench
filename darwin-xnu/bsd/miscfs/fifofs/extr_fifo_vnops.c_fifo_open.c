
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnop_open_args {int a_mode; int a_context; struct vnode* a_vp; } ;
struct vnode {int v_lock; struct fifoinfo* v_fifoinfo; } ;
struct TYPE_2__ {int sb_lowat; } ;
struct socket {int so_state; TYPE_1__ so_snd; } ;
struct fifoinfo {int fi_flags; int fi_readers; int fi_writers; struct socket* fi_readsock; struct socket* fi_writesock; } ;
typedef int* caddr_t ;


 int AF_LOCAL ;
 int ENXIO ;
 int FIFO_CREATED ;
 int FIFO_CREATEWAIT ;
 int FIFO_INCREATE ;
 int FREAD ;
 int FWRITE ;
 int O_NONBLOCK ;
 int PCATCH ;
 int PIPE_BUF ;
 int PRIBIO ;
 int PSOCK ;
 int SOCK_STREAM ;
 int SS_CANTRCVMORE ;
 int SS_CANTSENDMORE ;
 int fifo_close_internal (struct vnode*,int,int ,int) ;
 int msleep (int*,int *,int,char*,int *) ;
 int panic (char*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int soclose (struct socket*) ;
 int soconnect2 (struct socket*,struct socket*) ;
 int socreate (int ,struct socket**,int ,int ) ;
 int vnode_lock (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;
 int wakeup (int*) ;

int
fifo_open(struct vnop_open_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct fifoinfo *fip;
 struct socket *rso, *wso;
 int error;

 vnode_lock(vp);

retry:

 fip = vp->v_fifoinfo;

 if (fip == (struct fifoinfo *)0)
  panic("fifo_open with no fifoinfo");

 if ((fip->fi_flags & FIFO_CREATED) == 0) {
  if (fip->fi_flags & FIFO_INCREATE) {
   fip->fi_flags |= FIFO_CREATEWAIT;
   error = msleep(&fip->fi_flags, &vp->v_lock, PRIBIO | PCATCH, "fifocreatewait", ((void*)0));
   if (error) {
    vnode_unlock(vp);
    return(error);
   }
   goto retry;
  } else {
   fip->fi_flags |= FIFO_INCREATE;
   vnode_unlock(vp);
   if ( (error = socreate(AF_LOCAL, &rso, SOCK_STREAM, 0)) ) {
           goto bad1;
   }

   if ( (error = socreate(AF_LOCAL, &wso, SOCK_STREAM, 0)) ) {
    (void)soclose(rso);
           goto bad1;
   }

   if ( (error = soconnect2(wso, rso)) ) {
    (void)soclose(wso);
    (void)soclose(rso);
           goto bad1;
   }
   fip->fi_readers = fip->fi_writers = 0;




          socket_lock(wso, 1);
   wso->so_state |= SS_CANTRCVMORE;
   wso->so_snd.sb_lowat = PIPE_BUF;
          socket_unlock(wso, 1);

          socket_lock(rso, 1);
   rso->so_state |= SS_CANTSENDMORE;
          socket_unlock(rso, 1);

   vnode_lock(vp);
   fip->fi_readsock = rso;
   fip->fi_writesock = wso;

   fip->fi_flags |= FIFO_CREATED;
   fip->fi_flags &= ~FIFO_INCREATE;

   if ((fip->fi_flags & FIFO_CREATEWAIT)) {
    fip->fi_flags &= ~FIFO_CREATEWAIT;
    wakeup(&fip->fi_flags);
   }

  }
 }



 if (ap->a_mode & FREAD) {
  fip->fi_readers++;
  if (fip->fi_readers == 1) {
   socket_lock(fip->fi_writesock, 1);
   fip->fi_writesock->so_state &= ~SS_CANTSENDMORE;
   socket_unlock(fip->fi_writesock, 1);

   if (fip->fi_writers > 0)
    wakeup((caddr_t)&fip->fi_writers);
  }
 }
 if (ap->a_mode & FWRITE) {
  fip->fi_writers++;
  if (fip->fi_writers == 1) {
   socket_lock(fip->fi_readsock, 1);
   fip->fi_readsock->so_state &= ~SS_CANTRCVMORE;
   socket_unlock(fip->fi_readsock, 1);

   if (fip->fi_readers > 0)
    wakeup((caddr_t)&fip->fi_readers);
  }
 }
 if ((ap->a_mode & FREAD) && (ap->a_mode & O_NONBLOCK) == 0) {
  if (fip->fi_writers == 0) {
   error = msleep((caddr_t)&fip->fi_readers, &vp->v_lock,
     PCATCH | PSOCK, "fifoor", ((void*)0));
   if (error)
    goto bad;
   if (fip->fi_readers == 1) {
    if (fip->fi_writers > 0)
     wakeup((caddr_t)&fip->fi_writers);
   }
  }
 }
 if (ap->a_mode & FWRITE) {
  if (ap->a_mode & O_NONBLOCK) {
   if (fip->fi_readers == 0) {
     error = ENXIO;
     goto bad;
   }
  } else {
   if (fip->fi_readers == 0) {
    error = msleep((caddr_t)&fip->fi_writers,&vp->v_lock,
      PCATCH | PSOCK, "fifoow", ((void*)0));
    if (error)
     goto bad;
    if (fip->fi_writers == 1) {
     if (fip->fi_readers > 0)
      wakeup((caddr_t)&fip->fi_readers);
    }
   }
  }
 }

 vnode_unlock(vp);
 return (0);
bad:
 fifo_close_internal(vp, ap->a_mode, ap->a_context, 1);

 vnode_unlock(vp);
 return (error);
bad1:
 vnode_lock(vp);

 fip->fi_flags &= ~FIFO_INCREATE;

 if ((fip->fi_flags & FIFO_CREATEWAIT)) {
  fip->fi_flags &= ~FIFO_CREATEWAIT;
  wakeup(&fip->fi_flags);
 }
 vnode_unlock(vp);

 return (error);
}
