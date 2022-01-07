
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int caddr_t ;
struct TYPE_5__ {int v_numoutput; int v_lock; int v_flag; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KERNEL_DEBUG (int,int,int,int,int,int ) ;
 int NSEC_PER_USEC ;
 int PDROP ;
 int PRIBIO ;
 int VBWAIT ;
 int VTHROTTLED ;
 int msleep (int ,int *,int,char const*,struct timespec*) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

int
vnode_waitforwrites(vnode_t vp, int output_target, int slpflag, int slptimeout, const char *msg) {
        int error = 0;
 struct timespec ts;

 KERNEL_DEBUG(0x3010280 | DBG_FUNC_START, (int)vp, output_target, vp->v_numoutput, 0, 0);

 if (vp->v_numoutput > output_target) {

         slpflag |= PDROP;

         vnode_lock_spin(vp);

  while ((vp->v_numoutput > output_target) && error == 0) {
          if (output_target)
           vp->v_flag |= VTHROTTLED;
   else
           vp->v_flag |= VBWAIT;

   ts.tv_sec = (slptimeout/100);
   ts.tv_nsec = (slptimeout % 1000) * 10 * NSEC_PER_USEC * 1000 ;
   error = msleep((caddr_t)&vp->v_numoutput, &vp->v_lock, (slpflag | (PRIBIO + 1)), msg, &ts);

   vnode_lock_spin(vp);
  }
  vnode_unlock(vp);
 }
 KERNEL_DEBUG(0x3010280 | DBG_FUNC_END, (int)vp, output_target, vp->v_numoutput, error, 0);

 return error;
}
