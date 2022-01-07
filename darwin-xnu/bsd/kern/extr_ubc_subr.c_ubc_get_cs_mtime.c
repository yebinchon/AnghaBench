
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {struct ubc_info* v_ubcinfo; } ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct ubc_info {TYPE_1__ cs_mtime; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int UBCINFOEXISTS (struct vnode*) ;

void
ubc_get_cs_mtime(
 struct vnode *vp,
 struct timespec *cs_mtime)
{
 struct ubc_info *uip;

 if (! UBCINFOEXISTS(vp)) {
  cs_mtime->tv_sec = 0;
  cs_mtime->tv_nsec = 0;
  return;
 }

 uip = vp->v_ubcinfo;
 cs_mtime->tv_sec = uip->cs_mtime.tv_sec;
 cs_mtime->tv_nsec = uip->cs_mtime.tv_nsec;
}
