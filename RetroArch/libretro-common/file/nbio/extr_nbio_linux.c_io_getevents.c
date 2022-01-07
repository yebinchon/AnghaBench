
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct io_event {int dummy; } ;
typedef int aio_context_t ;


 int __NR_io_getevents ;
 int syscall (int ,int ,long,long,struct io_event*,struct timespec*) ;

__attribute__((used)) static int io_getevents(aio_context_t ctx, long min_nr, long nr,
      struct io_event * events, struct timespec * timeout)
{
   return syscall(__NR_io_getevents, ctx, min_nr, nr, events, timeout);
}
