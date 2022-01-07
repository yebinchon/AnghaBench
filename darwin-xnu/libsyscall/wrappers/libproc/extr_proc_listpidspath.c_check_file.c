
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vinfo_stat {scalar_t__ vst_dev; scalar_t__ vst_ino; } ;
typedef TYPE_2__* fdOpenInfoRef ;
struct TYPE_4__ {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct TYPE_5__ {int flags; TYPE_1__ match_stat; } ;


 int PROC_LISTPIDSPATH_PATH_IS_VOLUME ;

__attribute__((used)) static int
check_file(fdOpenInfoRef info, struct vinfo_stat *sb)
{
 if (sb->vst_dev == 0) {

  return 0;
 }

 if (sb->vst_dev != info->match_stat.st_dev) {

  return 0;
 }

 if (!(info->flags & PROC_LISTPIDSPATH_PATH_IS_VOLUME) &&
     (sb->vst_ino != info->match_stat.st_ino)) {

  return 0;
 }

 return 1;
}
