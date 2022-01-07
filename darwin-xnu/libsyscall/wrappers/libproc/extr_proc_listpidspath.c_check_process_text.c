
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ pri_size; scalar_t__ pri_address; } ;
struct TYPE_9__ {int vi_stat; } ;
struct TYPE_10__ {TYPE_2__ vip_vi; } ;
struct proc_regionwithpathinfo {TYPE_4__ prp_prinfo; TYPE_3__ prp_vip; } ;
typedef int rwpi ;
typedef TYPE_5__* fdOpenInfoRef ;
struct TYPE_8__ {scalar_t__ st_dev; } ;
struct TYPE_12__ {int flags; TYPE_1__ match_stat; } ;


 scalar_t__ EINVAL ;
 scalar_t__ ESRCH ;
 int PROC_LISTPIDSPATH_PATH_IS_VOLUME ;
 int PROC_PIDREGIONPATHINFO2 ;
 int PROC_PIDREGIONPATHINFO3 ;
 int check_file (TYPE_5__*,int *) ;
 scalar_t__ errno ;
 int proc_pidinfo (int,int ,scalar_t__,struct proc_regionwithpathinfo*,int) ;

__attribute__((used)) static int
check_process_text(fdOpenInfoRef info, int pid)
{
 int status;
 int buf_used;
 struct proc_regionwithpathinfo rwpi;

 if (info->flags & PROC_LISTPIDSPATH_PATH_IS_VOLUME) {


  buf_used = proc_pidinfo(pid, PROC_PIDREGIONPATHINFO3, info->match_stat.st_dev, &rwpi, sizeof(rwpi));
  if (buf_used <= 0) {
   if ((errno == ESRCH) || (errno == EINVAL)) {

    return 0;
   }
   return -1;
  } else if (buf_used < sizeof(rwpi)) {

   return -1;
  }

  status = check_file(info, &rwpi.prp_vip.vip_vi.vi_stat);
  if (status != 0) {

   return status;
  }
 } else {
  uint64_t a = 0;

  while (1) {

   buf_used = proc_pidinfo(pid, PROC_PIDREGIONPATHINFO2, a, &rwpi, sizeof(rwpi));
   if (buf_used <= 0) {
    if ((errno == ESRCH) || (errno == EINVAL)) {

     break;
    }
    return -1;
   } else if (buf_used < sizeof(rwpi)) {

    return -1;
   }

   status = check_file(info, &rwpi.prp_vip.vip_vi.vi_stat);
   if (status != 0) {

    return status;
   }

   a = rwpi.prp_prinfo.pri_address + rwpi.prp_prinfo.pri_size;
  }
 }

 return 0;
}
