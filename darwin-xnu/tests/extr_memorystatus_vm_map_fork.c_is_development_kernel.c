
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev ;
typedef int boolean_t ;


 int FALSE ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static boolean_t
is_development_kernel(void)
{
 int ret;
 int dev = 0;
 size_t dev_size = sizeof(dev);

 ret = sysctlbyname("kern.development", &dev, &dev_size, ((void*)0), 0);
 if (ret != 0) {
  return FALSE;
 }

 return (dev != 0);
}
