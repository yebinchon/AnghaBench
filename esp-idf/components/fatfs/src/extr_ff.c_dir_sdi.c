
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int sclust; scalar_t__ stat; TYPE_2__* fs; } ;
struct TYPE_8__ {scalar_t__ fs_type; int dirbase; int n_rootdir; int n_fatent; scalar_t__ win; scalar_t__ csize; } ;
struct TYPE_7__ {int dptr; scalar_t__ sect; int clust; scalar_t__ dir; TYPE_3__ obj; } ;
typedef int FRESULT ;
typedef TYPE_1__ FF_DIR ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;


 scalar_t__ FF_FS_EXFAT ;
 int FR_DISK_ERR ;
 int FR_INT_ERR ;
 int FR_OK ;
 scalar_t__ FS_EXFAT ;
 scalar_t__ FS_FAT32 ;
 scalar_t__ MAX_DIR ;
 scalar_t__ MAX_DIR_EX ;
 int SS (TYPE_2__*) ;
 int SZDIRE ;
 scalar_t__ clst2sect (TYPE_2__*,int) ;
 int get_fat (TYPE_3__*,int) ;

__attribute__((used)) static FRESULT dir_sdi (
 FF_DIR* dp,
 DWORD ofs
)
{
 DWORD csz, clst;
 FATFS *fs = dp->obj.fs;


 if (ofs >= (DWORD)((FF_FS_EXFAT && fs->fs_type == FS_EXFAT) ? MAX_DIR_EX : MAX_DIR) || ofs % SZDIRE) {
  return FR_INT_ERR;
 }
 dp->dptr = ofs;
 clst = dp->obj.sclust;
 if (clst == 0 && fs->fs_type >= FS_FAT32) {
  clst = fs->dirbase;
  if (FF_FS_EXFAT) dp->obj.stat = 0;
 }

 if (clst == 0) {
  if (ofs / SZDIRE >= fs->n_rootdir) return FR_INT_ERR;
  dp->sect = fs->dirbase;

 } else {
  csz = (DWORD)fs->csize * SS(fs);
  while (ofs >= csz) {
   clst = get_fat(&dp->obj, clst);
   if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
   if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;
   ofs -= csz;
  }
  dp->sect = clst2sect(fs, clst);
 }
 dp->clust = clst;
 if (dp->sect == 0) return FR_INT_ERR;
 dp->sect += ofs / SS(fs);
 dp->dir = fs->win + (ofs % SS(fs));

 return FR_OK;
}
