
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pid_t ;


 int PROC_DIRTYCONTROL_TRACK ;
 int PROC_INFO_CALL_DIRTYCONTROL ;
 int __proc_info (int ,int ,int ,int ,int *,int ) ;
 int errno ;

int
proc_track_dirty(pid_t pid, uint32_t flags)
{
 if (__proc_info(PROC_INFO_CALL_DIRTYCONTROL, pid, PROC_DIRTYCONTROL_TRACK, flags, ((void*)0), 0) == -1) {
  return errno;
 }

 return 0;
}
