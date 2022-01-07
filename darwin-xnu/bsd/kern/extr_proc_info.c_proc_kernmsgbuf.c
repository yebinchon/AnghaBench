
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint32_t ;
typedef int u_short ;
typedef int int32_t ;


 int EPERM ;
 int kauth_cred_get () ;
 int log_dmesg (int ,int ,int *) ;
 scalar_t__ suser (int ,int *) ;

int
proc_kernmsgbuf(user_addr_t buffer, uint32_t buffersize, int32_t * retval)
{
 if (suser(kauth_cred_get(), (u_short *)0) == 0) {
  return(log_dmesg(buffer, buffersize, retval));
 } else
  return(EPERM);
}
