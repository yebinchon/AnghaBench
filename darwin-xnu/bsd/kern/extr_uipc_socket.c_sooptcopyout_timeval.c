
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv64 ;
typedef int tv32 ;
struct user64_timeval {int tv_usec; int tv_sec; } ;
struct user32_timeval {int tv_usec; int tv_sec; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct sockopt {scalar_t__ sopt_p; size_t sopt_valsize; int sopt_val; } ;


 int CAST_DOWN (int ,int ) ;
 int USER_ADDR_NULL ;
 int bcopy (void const*,int ,size_t) ;
 int caddr_t ;
 int copyout (void const*,int ,size_t) ;
 scalar_t__ kernproc ;
 size_t min (size_t,size_t) ;
 scalar_t__ proc_is64bit (scalar_t__) ;

__attribute__((used)) static int
sooptcopyout_timeval(struct sockopt *sopt, const struct timeval *tv_p)
{
 int error;
 size_t len;
 struct user64_timeval tv64 = {};
 struct user32_timeval tv32 = {};
 const void * val;
 size_t valsize;

 error = 0;
 if (proc_is64bit(sopt->sopt_p)) {
  len = sizeof (tv64);
  tv64.tv_sec = tv_p->tv_sec;
  tv64.tv_usec = tv_p->tv_usec;
  val = &tv64;
 } else {
  len = sizeof (tv32);
  tv32.tv_sec = tv_p->tv_sec;
  tv32.tv_usec = tv_p->tv_usec;
  val = &tv32;
 }
 valsize = min(len, sopt->sopt_valsize);
 sopt->sopt_valsize = valsize;
 if (sopt->sopt_val != USER_ADDR_NULL) {
  if (sopt->sopt_p != kernproc)
   error = copyout(val, sopt->sopt_val, valsize);
  else
   bcopy(val, CAST_DOWN(caddr_t, sopt->sopt_val), valsize);
 }
 return (error);
}
