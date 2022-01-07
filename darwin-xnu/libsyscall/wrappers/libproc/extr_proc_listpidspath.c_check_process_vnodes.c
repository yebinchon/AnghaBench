
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vpi ;
struct TYPE_5__ {int vi_stat; } ;
struct TYPE_6__ {TYPE_1__ vip_vi; } ;
struct TYPE_8__ {int vi_stat; } ;
struct TYPE_7__ {TYPE_4__ vip_vi; } ;
struct proc_vnodepathinfo {TYPE_2__ pvi_rdir; TYPE_3__ pvi_cdir; } ;
typedef int fdOpenInfoRef ;


 scalar_t__ ESRCH ;
 int PROC_PIDVNODEPATHINFO ;
 int check_file (int ,int *) ;
 scalar_t__ errno ;
 int proc_pidinfo (int,int ,int ,struct proc_vnodepathinfo*,int) ;

__attribute__((used)) static int
check_process_vnodes(fdOpenInfoRef info, int pid)
{
 int buf_used;
 int status;
 struct proc_vnodepathinfo vpi;

 buf_used = proc_pidinfo(pid, PROC_PIDVNODEPATHINFO, 0, &vpi, sizeof(vpi));
 if (buf_used <= 0) {
  if (errno == ESRCH) {

   return 0;
  }
  return -1;
 } else if (buf_used < sizeof(vpi)) {

  return -1;
 }


 status = check_file(info, &vpi.pvi_cdir.vip_vi.vi_stat);
 if (status != 0) {

  return status;
 }


 status = check_file(info, &vpi.pvi_rdir.vip_vi.vi_stat);
 if (status != 0) {

  return status;
 }

 return 0;
}
