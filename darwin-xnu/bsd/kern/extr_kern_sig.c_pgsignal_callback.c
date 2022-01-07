
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int PROC_RETURNED ;
 int psignal (int ,int) ;

__attribute__((used)) static int
pgsignal_callback(proc_t p, void * arg)
{
        int signum = *(int*)arg;

 psignal(p, signum);
 return(PROC_RETURNED);
}
