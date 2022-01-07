
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_16__ {int objsize; scalar_t__ sclust; } ;
struct TYPE_15__ {scalar_t__ fs_type; int csize; scalar_t__ winsect; int const* win; int wflag; int pdrv; } ;
struct TYPE_14__ {int flag; int fptr; scalar_t__ sect; int const* buf; TYPE_3__ obj; scalar_t__ clust; scalar_t__ cltbl; scalar_t__ err; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef TYPE_2__ FATFS ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int ABORT (TYPE_2__*,int ) ;
 int FA_DIRTY ;
 int FA_MODIFIED ;
 int FA_WRITE ;
 int FF_FS_EXFAT ;
 scalar_t__ FR_DENIED ;
 int FR_DISK_ERR ;
 int FR_INT_ERR ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 int SS (TYPE_2__*) ;
 scalar_t__ clmt_clust (TYPE_1__*,int) ;
 scalar_t__ clst2sect (TYPE_2__*,scalar_t__) ;
 scalar_t__ create_chain (TYPE_3__*,scalar_t__) ;
 scalar_t__ disk_read (int ,int const*,scalar_t__,int) ;
 scalar_t__ disk_write (int ,int const*,scalar_t__,int) ;
 int mem_cpy (int const*,int const*,int) ;
 scalar_t__ move_window (TYPE_2__*,scalar_t__) ;
 scalar_t__ sync_window (TYPE_2__*) ;
 scalar_t__ validate (TYPE_3__*,TYPE_2__**) ;

FRESULT f_write (
 FIL* fp,
 const void* buff,
 UINT btw,
 UINT* bw
)
{
 FRESULT res;
 FATFS *fs;
 DWORD clst, sect;
 UINT wcnt, cc, csect;
 const BYTE *wbuff = (const BYTE*)buff;


 *bw = 0;
 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);
 if (!(fp->flag & FA_WRITE)) LEAVE_FF(fs, FR_DENIED);


 if ((!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) && (DWORD)(fp->fptr + btw) < (DWORD)fp->fptr) {
  btw = (UINT)(0xFFFFFFFF - (DWORD)fp->fptr);
 }

 for ( ; btw;
  btw -= wcnt, *bw += wcnt, wbuff += wcnt, fp->fptr += wcnt, fp->obj.objsize = (fp->fptr > fp->obj.objsize) ? fp->fptr : fp->obj.objsize) {
  if (fp->fptr % SS(fs) == 0) {
   csect = (UINT)(fp->fptr / SS(fs)) & (fs->csize - 1);
   if (csect == 0) {
    if (fp->fptr == 0) {
     clst = fp->obj.sclust;
     if (clst == 0) {
      clst = create_chain(&fp->obj, 0);
     }
    } else {





     {
      clst = create_chain(&fp->obj, fp->clust);
     }
    }
    if (clst == 0) break;
    if (clst == 1) ABORT(fs, FR_INT_ERR);
    if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
    fp->clust = clst;
    if (fp->obj.sclust == 0) fp->obj.sclust = clst;
   }



   if (fp->flag & FA_DIRTY) {
    if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
    fp->flag &= (BYTE)~FA_DIRTY;
   }

   sect = clst2sect(fs, fp->clust);
   if (sect == 0) ABORT(fs, FR_INT_ERR);
   sect += csect;
   cc = btw / SS(fs);
   if (cc > 0) {
    if (csect + cc > fs->csize) {
     cc = fs->csize - csect;
    }
    if (disk_write(fs->pdrv, wbuff, sect, cc) != RES_OK) ABORT(fs, FR_DISK_ERR);







    if (fp->sect - sect < cc) {
     mem_cpy(fp->buf, wbuff + ((fp->sect - sect) * SS(fs)), SS(fs));
     fp->flag &= (BYTE)~FA_DIRTY;
    }


    wcnt = SS(fs) * cc;
    continue;
   }






   if (fp->sect != sect &&
    fp->fptr < fp->obj.objsize &&
    disk_read(fs->pdrv, fp->buf, sect, 1) != RES_OK) {
     ABORT(fs, FR_DISK_ERR);
   }

   fp->sect = sect;
  }
  wcnt = SS(fs) - (UINT)fp->fptr % SS(fs);
  if (wcnt > btw) wcnt = btw;





  mem_cpy(fp->buf + fp->fptr % SS(fs), wbuff, wcnt);
  fp->flag |= FA_DIRTY;

 }

 fp->flag |= FA_MODIFIED;

 LEAVE_FF(fs, FR_OK);
}
