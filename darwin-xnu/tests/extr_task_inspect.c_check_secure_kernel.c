
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secure_kern ;


 int T_ASSERT_POSIX_SUCCESS (int ,int *) ;
 int T_SKIP (char*) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static void
check_secure_kernel(void)
{
 int secure_kern = 0;
 size_t secure_kern_size = sizeof(secure_kern);

 T_ASSERT_POSIX_SUCCESS(sysctlbyname("kern.secure_kernel", &secure_kern,
   &secure_kern_size, ((void*)0), 0), ((void*)0));

 if (secure_kern) {
  T_SKIP("secure kernel: processor_set_tasks will not return kernel_task");
 }
}
