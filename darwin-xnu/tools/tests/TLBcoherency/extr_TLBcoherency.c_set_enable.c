
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_KDEBUG ;
 int KERN_KDENABLE ;
 int printf (char*) ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int *,int ) ;

void set_enable(int val)
{
 int mib[6];
 size_t needed;

        mib[0] = CTL_KERN;
        mib[1] = KERN_KDEBUG;
        mib[2] = KERN_KDENABLE;
        mib[3] = val;
        mib[4] = 0;
        mib[5] = 0;

        if (sysctl(mib, 4, ((void*)0), &needed, ((void*)0), 0) < 0) {
                printf("trace facility failure, KERN_KDENABLE\n");
 }
}
