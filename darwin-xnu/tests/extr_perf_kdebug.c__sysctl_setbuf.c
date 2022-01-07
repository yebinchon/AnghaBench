
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int CTL_KERN ;
 int KERN_KDEBUG ;
 int KERN_KDSETBUF ;
 int T_FAIL (char*) ;
 scalar_t__ sysctl (int*,int,int *,int *,int *,int ) ;

__attribute__((used)) static void _sysctl_setbuf(uint32_t capacity) {
 int mib[] = { CTL_KERN, KERN_KDEBUG, KERN_KDSETBUF, (int)capacity };
 if (sysctl(mib, 4, ((void*)0), ((void*)0), ((void*)0), 0)) {
  T_FAIL("KERN_KDSETBUF sysctl failed");
 }
}
