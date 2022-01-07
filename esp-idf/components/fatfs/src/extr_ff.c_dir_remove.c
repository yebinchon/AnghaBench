
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ fs_type; int wflag; } ;
struct TYPE_8__ {TYPE_3__* fs; } ;
struct TYPE_9__ {scalar_t__ dptr; int blk_ofs; int* dir; int sect; TYPE_1__ obj; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_2__ FF_DIR ;
typedef TYPE_3__ FATFS ;
typedef scalar_t__ DWORD ;


 void* DDEM ;
 size_t DIR_Name ;
 scalar_t__ FF_FS_EXFAT ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 size_t XDIR_Type ;
 scalar_t__ dir_next (TYPE_2__*,int ) ;
 scalar_t__ dir_sdi (TYPE_2__*,int) ;
 scalar_t__ move_window (TYPE_3__*,int ) ;

__attribute__((used)) static FRESULT dir_remove (
 FF_DIR* dp
)
{
 FRESULT res;
 FATFS *fs = dp->obj.fs;
 res = move_window(fs, dp->sect);
 if (res == FR_OK) {
  dp->dir[DIR_Name] = DDEM;
  fs->wflag = 1;
 }


 return res;
}
