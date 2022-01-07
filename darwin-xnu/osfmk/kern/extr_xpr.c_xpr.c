
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xprbuf {char const* msg; long arg1; long arg2; long arg3; long arg4; long arg5; int cpuinfo; int timestamp; } ;
typedef int spl_t ;


 int XPR_TIMESTAMP ;
 int cpu_number () ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int splhigh () ;
 int splx (int ) ;
 struct xprbuf* xprbase ;
 int xprenable ;
 struct xprbuf* xprlast ;
 int xprlock ;
 struct xprbuf* xprptr ;

void
xpr(
 const char *msg,
 long arg1,
 long arg2,
 long arg3,
 long arg4,
 long arg5)
{
 spl_t s;
 struct xprbuf *x;


 if (!xprenable || (xprptr == 0))
  return;


 s = splhigh();
 simple_lock(&xprlock);
 x = xprptr++;
 if (xprptr >= xprlast) {

  xprptr = xprbase;
 }

 *(struct xprbuf **)xprlast = xprptr;
 simple_unlock(&xprlock);
 x->timestamp = XPR_TIMESTAMP;
 splx(s);
 x->msg = msg;
 x->arg1 = arg1;
 x->arg2 = arg2;
 x->arg3 = arg3;
 x->arg4 = arg4;
 x->arg5 = arg5;
 mp_disable_preemption();
 x->cpuinfo = cpu_number();
 mp_enable_preemption();
}
