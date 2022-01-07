
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PROC_INFO_CALL_SETCONTROL ;
 int PROC_SELFSET_DELAYIDLESLEEP ;
 int __proc_info (int ,int ,int ,int ,int *,int ) ;
 int errno ;
 int getpid () ;

int
proc_set_delayidlesleep(void)
{
 int retval;

 if ((retval = __proc_info(PROC_INFO_CALL_SETCONTROL, getpid(), PROC_SELFSET_DELAYIDLESLEEP, (uint64_t)1, ((void*)0), 0)) == -1)
  return(errno);

 return(0);
}
