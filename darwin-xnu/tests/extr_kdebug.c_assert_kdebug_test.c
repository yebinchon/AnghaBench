
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mib ;


 int CTL_KERN ;
 int KERN_KDEBUG ;
 int KERN_KDTEST ;
 int T_ASSERT_POSIX_SUCCESS (int ,char*) ;
 int sysctl (int*,int,int *,size_t*,int *,int ) ;

__attribute__((used)) static void
assert_kdebug_test(unsigned int flavor)
{
 size_t size = flavor;
 int mib[] = { CTL_KERN, KERN_KDEBUG, KERN_KDTEST };
 T_ASSERT_POSIX_SUCCESS(sysctl(mib, sizeof(mib) / sizeof(mib[0]), ((void*)0),
   &size, ((void*)0), 0), "KERN_KDTEST sysctl");
}
