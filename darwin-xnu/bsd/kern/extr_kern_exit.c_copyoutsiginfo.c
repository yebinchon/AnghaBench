
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_siginfo_t ;
typedef int user_addr_t ;
typedef int user64_siginfo_t ;
typedef int user32_siginfo_t ;
typedef int sinfo64 ;
typedef int sinfo32 ;
typedef scalar_t__ boolean_t ;


 int bzero (int *,int) ;
 int copyout (int *,int ,int) ;
 int siginfo_user_to_user32 (int *,int *) ;
 int siginfo_user_to_user64 (int *,int *) ;

__attribute__((used)) static int
copyoutsiginfo(user_siginfo_t *native, boolean_t is64, user_addr_t uaddr)
{
 if (is64) {
  user64_siginfo_t sinfo64;

  bzero(&sinfo64, sizeof (sinfo64));
  siginfo_user_to_user64(native, &sinfo64);
  return (copyout(&sinfo64, uaddr, sizeof (sinfo64)));
 } else {
  user32_siginfo_t sinfo32;

  bzero(&sinfo32, sizeof (sinfo32));
  siginfo_user_to_user32(native, &sinfo32);
  return (copyout(&sinfo32, uaddr, sizeof (sinfo32)));
 }
}
