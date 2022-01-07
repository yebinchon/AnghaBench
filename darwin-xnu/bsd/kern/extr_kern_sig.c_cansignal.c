
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;
typedef int kauth_cred_t ;


 int cansignal_nomac (int ,int ,int ,int) ;
 scalar_t__ mac_proc_check_signal (int ,int ,int) ;

int
cansignal(proc_t src, kauth_cred_t uc_src, proc_t dst, int signum)
{






 return cansignal_nomac(src, uc_src, dst, signum);
}
