
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cerror_return_t ;


 int _pthread_exit_if_canceled (int) ;
 int cerror_nocancel (int) ;

__attribute__((noinline))
cerror_return_t
cerror(int err)
{
 _pthread_exit_if_canceled(err);
 return cerror_nocancel(err);
}
