
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t PAGE_MASK ;
 int __msync_nocancel (void*,size_t,int) ;

int
msync(void *addr, size_t len, int flags)
{
 size_t offset;






 offset = ((uintptr_t) addr) & PAGE_MASK;
 addr = (void *) (((uintptr_t) addr) & ~PAGE_MASK);
 len += offset;
 return __msync_nocancel(addr, len, flags);
}
