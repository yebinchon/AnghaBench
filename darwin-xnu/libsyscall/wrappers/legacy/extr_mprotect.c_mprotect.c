
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 uintptr_t PAGE_MASK ;
 int __mprotect (void*,size_t,int) ;
 scalar_t__ errno ;

int
mprotect(void *addr, size_t len, int prot)
{
 void *aligned_addr;
 size_t offset;
 int rv;






 offset = ((uintptr_t) addr) & PAGE_MASK;
 aligned_addr = (void *) (((uintptr_t) addr) & ~PAGE_MASK);
 len += offset;
 rv = __mprotect(aligned_addr, len, prot);
 if (rv == -1 && errno == ENOMEM) {





  errno = EINVAL;
 }
 return rv;
}
