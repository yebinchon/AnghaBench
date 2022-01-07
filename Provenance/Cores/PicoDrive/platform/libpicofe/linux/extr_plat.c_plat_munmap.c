
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HUGETLB_PAGESIZE ;
 int errno ;
 int fprintf (int ,char*,void*,size_t,int ) ;
 int munmap (void*,size_t) ;
 int stderr ;

void plat_munmap(void *ptr, size_t size)
{
 int ret;

 ret = munmap(ptr, size);
 if (ret != 0 && (size & (HUGETLB_PAGESIZE - 1))) {

  size = (size + HUGETLB_PAGESIZE - 1) & ~(HUGETLB_PAGESIZE - 1);
  ret = munmap(ptr, size);
 }
 if (ret != 0) {
  fprintf(stderr,
   "munmap(%p, %zu) failed: %d\n", ptr, size, errno);
 }
}
