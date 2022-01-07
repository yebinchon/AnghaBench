
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int vip_path; } ;
struct proc_regionwithpathinfo {TYPE_1__ prp_vip; } ;


 int ENOMEM ;
 scalar_t__ MAXPATHLEN ;
 int PROC_PIDREGIONPATHINFO2 ;
 int errno ;
 int proc_pidinfo (int,int ,scalar_t__,struct proc_regionwithpathinfo*,int) ;
 scalar_t__ strlcpy (void*,int ,scalar_t__) ;

int
proc_regionfilename(int pid, uint64_t address, void * buffer, uint32_t buffersize)
{
 int retval;
 struct proc_regionwithpathinfo reginfo;

 if (buffersize < MAXPATHLEN) {
  errno = ENOMEM;
  return(0);
 }

 retval = proc_pidinfo(pid, PROC_PIDREGIONPATHINFO2, (uint64_t)address, &reginfo, sizeof(struct proc_regionwithpathinfo));
 if (retval != -1) {
  return ((int)(strlcpy(buffer, reginfo.prp_vip.vip_path, MAXPATHLEN)));
 }
 return(0);
}
