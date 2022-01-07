
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv64 ;
typedef int tv32 ;
struct user64_timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct user32_timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct sockopt {scalar_t__ sopt_p; int sopt_valsize; int sopt_val; } ;


 int CAST_DOWN (int ,int ) ;
 int EDOM ;
 int EINVAL ;
 scalar_t__ LONG_MAX ;
 int bcopy (int ,struct user64_timeval*,int) ;
 int caddr_t ;
 int copyin (int ,struct user64_timeval*,int) ;
 scalar_t__ kernproc ;
 scalar_t__ proc_is64bit (scalar_t__) ;

__attribute__((used)) static int
sooptcopyin_timeval(struct sockopt *sopt, struct timeval *tv_p)
{
 int error;

 if (proc_is64bit(sopt->sopt_p)) {
  struct user64_timeval tv64;

  if (sopt->sopt_valsize < sizeof (tv64))
   return (EINVAL);

  sopt->sopt_valsize = sizeof (tv64);
  if (sopt->sopt_p != kernproc) {
   error = copyin(sopt->sopt_val, &tv64, sizeof (tv64));
   if (error != 0)
    return (error);
  } else {
   bcopy(CAST_DOWN(caddr_t, sopt->sopt_val), &tv64,
       sizeof (tv64));
  }
  if (tv64.tv_sec < 0 || tv64.tv_sec > LONG_MAX ||
      tv64.tv_usec < 0 || tv64.tv_usec >= 1000000)
   return (EDOM);

  tv_p->tv_sec = tv64.tv_sec;
  tv_p->tv_usec = tv64.tv_usec;
 } else {
  struct user32_timeval tv32;

  if (sopt->sopt_valsize < sizeof (tv32))
   return (EINVAL);

  sopt->sopt_valsize = sizeof (tv32);
  if (sopt->sopt_p != kernproc) {
   error = copyin(sopt->sopt_val, &tv32, sizeof (tv32));
   if (error != 0) {
    return (error);
   }
  } else {
   bcopy(CAST_DOWN(caddr_t, sopt->sopt_val), &tv32,
       sizeof (tv32));
  }
  tv_p->tv_sec = tv32.tv_sec;
  tv_p->tv_usec = tv32.tv_usec;
 }
 return (0);
}
