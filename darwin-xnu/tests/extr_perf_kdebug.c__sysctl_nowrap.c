
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KDBG_NOWRAP ;
 int KERN_KDDFLAGS ;
 int KERN_KDEBUG ;
 int KERN_KDEFLAGS ;
 int T_FAIL (char*) ;
 scalar_t__ sysctl (int*,int,int *,int *,int *,int ) ;

__attribute__((used)) static void _sysctl_nowrap(bool is_nowrap) {
 int mib[] = { CTL_KERN, KERN_KDEBUG, is_nowrap ? KERN_KDEFLAGS : KERN_KDDFLAGS, KDBG_NOWRAP };
 if (sysctl(mib, 4, ((void*)0), ((void*)0), ((void*)0), 0)) {
  T_FAIL("KDBG_NOWRAP sysctl failed");
 }
}
