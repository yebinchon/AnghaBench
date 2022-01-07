
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev ;


 int NOTSET ;
 int T_ASSERT_POSIX_SUCCESS (int ,int *) ;
 int T_QUIET ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
is_development_kernel(void)
{


 static int is_dev = -1;

 if (is_dev == -1) {
  int dev;
  size_t dev_size = sizeof(dev);

  T_QUIET;
  T_ASSERT_POSIX_SUCCESS(sysctlbyname("kern.development", &dev, &dev_size, ((void*)0), 0), ((void*)0));
  is_dev = (dev != 0);

  return is_dev;
 } else {
  return is_dev;
 }

}
