
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int n_fatent; scalar_t__ fs_type; int free_clst; int fsi_flag; int csize; int pdrv; } ;
struct TYPE_8__ {int stat; int sclust; int n_cont; TYPE_2__* fs; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FFOBJID ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;


 int CTRL_TRIM ;
 int FF_FS_EXFAT ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 scalar_t__ change_bitmap (TYPE_2__*,int,int,int ) ;
 int clst2sect (TYPE_2__*,int) ;
 int disk_ioctl (int ,int ,int*) ;
 int get_fat (TYPE_1__*,int) ;
 scalar_t__ put_fat (TYPE_2__*,int,int) ;

__attribute__((used)) static FRESULT remove_chain (
 FFOBJID* obj,
 DWORD clst,
 DWORD pclst
)
{
 FRESULT res = FR_OK;
 DWORD nxt;
 FATFS *fs = obj->fs;







 if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;


 if (pclst != 0 && (!FF_FS_EXFAT || fs->fs_type != FS_EXFAT || obj->stat != 2)) {
  res = put_fat(fs, pclst, 0xFFFFFFFF);
  if (res != FR_OK) return res;
 }


 do {
  nxt = get_fat(obj, clst);
  if (nxt == 0) break;
  if (nxt == 1) return FR_INT_ERR;
  if (nxt == 0xFFFFFFFF) return FR_DISK_ERR;
  if (!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) {
   res = put_fat(fs, clst, 0);
   if (res != FR_OK) return res;
  }
  if (fs->free_clst < fs->n_fatent - 2) {
   fs->free_clst++;
   fs->fsi_flag |= 1;
  }
  clst = nxt;
 } while (clst < fs->n_fatent);
 return FR_OK;
}
