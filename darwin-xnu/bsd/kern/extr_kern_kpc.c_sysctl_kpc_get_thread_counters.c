
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int EINVAL ;
 int kpc_get_curthread_counters (int*,void*) ;

__attribute__((used)) static int
sysctl_kpc_get_thread_counters(uint32_t tid,
                             uint32_t *size, void *buf)
{
 uint32_t count = *size / sizeof(uint64_t);
 int r;

 if( tid != 0 )
  return EINVAL;

 r = kpc_get_curthread_counters(&count, buf);
 if( !r )
  *size = count * sizeof(uint64_t);

 return r;
}
