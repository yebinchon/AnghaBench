
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;


 void* __ntd_pid ;
 void* __ntd_vid ;
 int __ntd_vid_pid_specified ;

void __ntd_set_pid_vid(u16 vid,u16 pid)
{
 __ntd_vid = vid;
 __ntd_pid = pid;
 __ntd_vid_pid_specified = 1;
}
