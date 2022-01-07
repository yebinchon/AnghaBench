
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sobj; scalar_t__ fs_type; } ;
typedef int TCHAR ;
typedef int FRESULT ;
typedef TYPE_1__ FATFS ;
typedef scalar_t__ BYTE ;


 int FR_INT_ERR ;
 int FR_INVALID_DRIVE ;
 int FR_OK ;
 TYPE_1__** FatFs ;
 int LEAVE_FF (TYPE_1__*,int ) ;
 int clear_lock (TYPE_1__*) ;
 int ff_cre_syncobj (scalar_t__,int *) ;
 int ff_del_syncobj (int ) ;
 int find_volume (int const**,TYPE_1__**,int ) ;
 int get_ldnumber (int const**) ;

FRESULT f_mount (
 FATFS* fs,
 const TCHAR* path,
 BYTE opt
)
{
 FATFS *cfs;
 int vol;
 FRESULT res;
 const TCHAR *rp = path;



 vol = get_ldnumber(&rp);
 if (vol < 0) return FR_INVALID_DRIVE;
 cfs = FatFs[vol];

 if (cfs) {






  cfs->fs_type = 0;
 }

 if (fs) {
  fs->fs_type = 0;



 }
 FatFs[vol] = fs;

 if (opt == 0) return FR_OK;

 res = find_volume(&path, &fs, 0);
 LEAVE_FF(fs, res);
}
