
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ user_addr_t ;
struct TYPE_6__ {int sival_int; } ;
struct TYPE_7__ {TYPE_2__ size_equivalent; } ;
struct user_sigevent {void* sigev_notify_attributes; void* sigev_notify_function; TYPE_3__ sigev_value; int sigev_signo; int sigev_notify; } ;
struct TYPE_5__ {int sival_int; } ;
struct TYPE_8__ {int sival_int; TYPE_1__ size_equivalent; } ;
struct user64_sigevent {void* sigev_notify_attributes; void* sigev_notify_function; TYPE_4__ sigev_value; int sigev_signo; int sigev_notify; } ;
struct user32_sigevent {void* sigev_notify_attributes; void* sigev_notify_function; TYPE_4__ sigev_value; int sigev_signo; int sigev_notify; } ;
typedef int sigevent64 ;
typedef int sigevent32 ;
typedef int proc_t ;


 void* CAST_USER_ADDR_T (void*) ;
 int EAGAIN ;
 scalar_t__ USER_ADDR_NULL ;
 int copyin (scalar_t__,struct user64_sigevent*,int) ;
 scalar_t__ proc_is64bit (int ) ;

__attribute__((used)) static int
aio_copy_in_sigev(proc_t procp, user_addr_t sigp, struct user_sigevent *sigev)
{
 int result = 0;

 if (sigp == USER_ADDR_NULL)
  goto out;
 if ( proc_is64bit(procp) ) {
  struct user64_sigevent sigevent64;

  result = copyin( sigp, &sigevent64, sizeof(sigevent64) );
  if ( result == 0 ) {
   sigev->sigev_notify = sigevent64.sigev_notify;
   sigev->sigev_signo = sigevent64.sigev_signo;
   sigev->sigev_value.size_equivalent.sival_int = sigevent64.sigev_value.size_equivalent.sival_int;
   sigev->sigev_notify_function = sigevent64.sigev_notify_function;
   sigev->sigev_notify_attributes = sigevent64.sigev_notify_attributes;
  }

 } else {
  struct user32_sigevent sigevent32;

  result = copyin( sigp, &sigevent32, sizeof(sigevent32) );
  if ( result == 0 ) {
   sigev->sigev_notify = sigevent32.sigev_notify;
   sigev->sigev_signo = sigevent32.sigev_signo;
   sigev->sigev_value.size_equivalent.sival_int = sigevent32.sigev_value.sival_int;
   sigev->sigev_notify_function = CAST_USER_ADDR_T(sigevent32.sigev_notify_function);
   sigev->sigev_notify_attributes = CAST_USER_ADDR_T(sigevent32.sigev_notify_attributes);
  }
 }

 if ( result != 0 ) {
  result = EAGAIN;
 }

out:
 return (result);
}
