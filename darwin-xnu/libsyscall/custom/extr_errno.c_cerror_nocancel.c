
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cerror_return_t ;


 int __TSD_ERRNO ;
 scalar_t__ _os_tsd_get_direct (int ) ;
 int errno ;

__attribute__((noinline))
cerror_return_t
cerror_nocancel(int err)
{
 errno = err;
 int *tsderrno = (int*)_os_tsd_get_direct(__TSD_ERRNO);
 if (tsderrno) {
  *tsderrno = err;
 }
 return -1;
}
