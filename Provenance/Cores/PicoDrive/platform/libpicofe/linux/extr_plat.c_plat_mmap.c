
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t HUGETLB_THRESHOLD ;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_HUGETLB ;
 int MAP_PRIVATE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int errno ;
 int fprintf (int ,char*,void*,void*,...) ;
 void* mmap (void*,size_t,int,int,int,int ) ;
 int stderr ;

void *plat_mmap(unsigned long addr, size_t size, int need_exec, int is_fixed)
{
 static int hugetlb_warned;
 int prot = PROT_READ | PROT_WRITE;
 int flags = MAP_PRIVATE | MAP_ANONYMOUS;
 void *req, *ret;

 req = (void *)addr;
 if (need_exec)
  prot |= PROT_EXEC;
 if (is_fixed)
  flags |= MAP_FIXED;
 if (size >= HUGETLB_THRESHOLD)
  flags |= MAP_HUGETLB;

 ret = mmap(req, size, prot, flags, -1, 0);
 if (ret == MAP_FAILED && (flags & MAP_HUGETLB)) {
  if (!hugetlb_warned) {
   fprintf(stderr,
    "warning: failed to do hugetlb mmap (%p, %zu): %d\n",
    req, size, errno);
   hugetlb_warned = 1;
  }
  flags &= ~MAP_HUGETLB;
  ret = mmap(req, size, prot, flags, -1, 0);
 }
 if (ret == MAP_FAILED)
  return ((void*)0);

 if (req != ((void*)0) && ret != req)
  fprintf(stderr,
   "warning: mmaped to %p, requested %p\n", ret, req);

 return ret;
}
