
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int stat; TYPE_2__* fs; } ;
struct TYPE_10__ {scalar_t__ fs_type; int n_rootdir; int csize; int n_fatent; scalar_t__ win; } ;
struct TYPE_9__ {int dptr; int clust; scalar_t__ dir; int sect; TYPE_3__ obj; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FF_DIR ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;


 scalar_t__ FF_FS_EXFAT ;
 scalar_t__ FR_DENIED ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INT_ERR ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 scalar_t__ MAX_DIR ;
 scalar_t__ MAX_DIR_EX ;
 int SS (TYPE_2__*) ;
 int SZDIRE ;
 int clst2sect (TYPE_2__*,int) ;
 int create_chain (TYPE_3__*,int) ;
 scalar_t__ dir_clear (TYPE_2__*,int) ;
 int get_fat (TYPE_3__*,int) ;

__attribute__((used)) static FRESULT dir_next (
 FF_DIR* dp,
 int stretch
)
{
 DWORD ofs, clst;
 FATFS *fs = dp->obj.fs;


 ofs = dp->dptr + SZDIRE;
 if (ofs >= (DWORD)((FF_FS_EXFAT && fs->fs_type == FS_EXFAT) ? MAX_DIR_EX : MAX_DIR)) dp->sect = 0;
 if (dp->sect == 0) return FR_NO_FILE;

 if (ofs % SS(fs) == 0) {
  dp->sect++;

  if (dp->clust == 0) {
   if (ofs / SZDIRE >= fs->n_rootdir) {
    dp->sect = 0; return FR_NO_FILE;
   }
  }
  else {
   if ((ofs / SS(fs) & (fs->csize - 1)) == 0) {
    clst = get_fat(&dp->obj, dp->clust);
    if (clst <= 1) return FR_INT_ERR;
    if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
    if (clst >= fs->n_fatent) {

     if (!stretch) {
      dp->sect = 0; return FR_NO_FILE;
     }
     clst = create_chain(&dp->obj, dp->clust);
     if (clst == 0) return FR_DENIED;
     if (clst == 1) return FR_INT_ERR;
     if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
     if (dir_clear(fs, clst) != FR_OK) return FR_DISK_ERR;
     if (FF_FS_EXFAT) dp->obj.stat |= 4;




    }
    dp->clust = clst;
    dp->sect = clst2sect(fs, clst);
   }
  }
 }
 dp->dptr = ofs;
 dp->dir = fs->win + ofs % SS(fs);

 return FR_OK;
}
