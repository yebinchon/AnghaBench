
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int fs ;
struct TYPE_14__ {int stat; scalar_t__ objsize; int sclust; int fs; } ;
struct TYPE_13__ {scalar_t__ fs_type; int* dirbuf; int wflag; int pdrv; } ;
struct TYPE_12__ {int flag; int* dir_ptr; TYPE_3__ obj; int dir_sect; int clust; int sect; int buf; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef int FF_DIR ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;
typedef int DEF_NAMBUF ;
typedef int BYTE ;


 int AM_ARC ;
 size_t DIR_Attr ;
 int DIR_FileSize ;
 int DIR_LstAccDate ;
 int DIR_ModTime ;
 int FA_DIRTY ;
 int FA_MODIFIED ;
 int FREE_NAMBUF () ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 int GET_FATTIME () ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 int XDIR_AccTime ;
 size_t XDIR_Attr ;
 int XDIR_FileSize ;
 int XDIR_FstClus ;
 size_t XDIR_GenFlags ;
 int XDIR_ModTime ;
 size_t XDIR_ModTime10 ;
 int XDIR_ValidFileSize ;
 scalar_t__ disk_write (int ,int ,int ,int) ;
 scalar_t__ fill_first_frag (TYPE_3__*) ;
 scalar_t__ fill_last_frag (TYPE_3__*,int ,int) ;
 scalar_t__ load_obj_xdir (int *,TYPE_3__*) ;
 scalar_t__ move_window (TYPE_2__*,int ) ;
 int st_clust (int ,int*,int ) ;
 int st_dword (int*,int ) ;
 int st_qword (int*,scalar_t__) ;
 int st_word (int*,int ) ;
 scalar_t__ store_xdir (int *) ;
 scalar_t__ sync_fs (TYPE_2__*) ;
 scalar_t__ validate (TYPE_3__*,TYPE_2__**) ;

FRESULT f_sync (
 FIL* fp
)
{
 FRESULT res;
 FATFS *fs;
 DWORD tm;
 BYTE *dir;


 res = validate(&fp->obj, &fs);
 if (res == FR_OK) {
  if (fp->flag & FA_MODIFIED) {

   if (fp->flag & FA_DIRTY) {
    if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) LEAVE_FF(fs, FR_DISK_ERR);
    fp->flag &= (BYTE)~FA_DIRTY;
   }


   tm = GET_FATTIME();
   {
    res = move_window(fs, fp->dir_sect);
    if (res == FR_OK) {
     dir = fp->dir_ptr;
     dir[DIR_Attr] |= AM_ARC;
     st_clust(fp->obj.fs, dir, fp->obj.sclust);
     st_dword(dir + DIR_FileSize, (DWORD)fp->obj.objsize);
     st_dword(dir + DIR_ModTime, tm);
     st_word(dir + DIR_LstAccDate, 0);
     fs->wflag = 1;
     res = sync_fs(fs);
     fp->flag &= (BYTE)~FA_MODIFIED;
    }
   }
  }
 }

 LEAVE_FF(fs, res);
}
