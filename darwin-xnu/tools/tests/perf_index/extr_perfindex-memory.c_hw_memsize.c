
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int my_memsize ;


 int CTL_HW ;
 int HW_MEMSIZE ;
 int sysctl (int*,int,size_t*,size_t*,int *,int ) ;

size_t hw_memsize(void) {
  int mib[2];
  size_t len;
  size_t my_memsize;
  int retval;

  mib[0] = CTL_HW;
  mib[1] = HW_MEMSIZE;
  len = sizeof(my_memsize);

  retval = sysctl(mib, 2, &my_memsize, &len, ((void*)0), 0);

  if(retval != 0)
      return 0;

  return my_memsize;
}
