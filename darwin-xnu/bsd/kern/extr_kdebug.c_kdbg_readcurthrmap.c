
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int user_addr_t ;
typedef int kd_threadmap ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ copyout (int *,int ,unsigned int) ;
 int * kdbg_thrmap_init_internal (unsigned int,unsigned int*,unsigned int*) ;
 int kernel_map ;
 int kmem_free (int ,int ,unsigned int) ;

int
kdbg_readcurthrmap(user_addr_t buffer, size_t *bufsize)
{
 kd_threadmap *mapptr;
 unsigned int mapsize;
 unsigned int mapcount;
 unsigned int count = 0;
 int ret = 0;

 count = *bufsize/sizeof(kd_threadmap);
 *bufsize = 0;

 if ( (mapptr = kdbg_thrmap_init_internal(count, &mapsize, &mapcount)) ) {
  if (copyout(mapptr, buffer, mapcount * sizeof(kd_threadmap)))
   ret = EFAULT;
  else
   *bufsize = (mapcount * sizeof(kd_threadmap));

  kmem_free(kernel_map, (vm_offset_t)mapptr, mapsize);
 } else
  ret = EINVAL;

 return (ret);
}
