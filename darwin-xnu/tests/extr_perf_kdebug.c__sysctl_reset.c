
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_KDEBUG ;
 int KERN_KDREMOVE ;
 int T_FAIL (char*) ;
 scalar_t__ sysctl (int*,int,int *,int *,int *,int ) ;

__attribute__((used)) static void _sysctl_reset() {
 int mib[] = { CTL_KERN, KERN_KDEBUG, KERN_KDREMOVE };
 if(sysctl(mib, 3, ((void*)0), ((void*)0), ((void*)0), 0)) {
  T_FAIL("KERN_KDREMOVE sysctl failed");
 }
}
