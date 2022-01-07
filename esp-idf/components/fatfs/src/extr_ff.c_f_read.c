
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_15__ {scalar_t__ objsize; int sclust; } ;
struct TYPE_14__ {int csize; int winsect; int* win; int pdrv; scalar_t__ wflag; } ;
struct TYPE_13__ {int flag; scalar_t__ fptr; int clust; int sect; int* buf; TYPE_3__ obj; scalar_t__ cltbl; scalar_t__ err; } ;
typedef scalar_t__ FSIZE_t ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FIL ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 int ABORT (TYPE_2__*,int ) ;
 int FA_DIRTY ;
 int FA_READ ;
 scalar_t__ FR_DENIED ;
 int FR_DISK_ERR ;
 int FR_INT_ERR ;
 scalar_t__ FR_OK ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 scalar_t__ RES_OK ;
 int SS (TYPE_2__*) ;
 int clmt_clust (TYPE_1__*,int) ;
 int clst2sect (TYPE_2__*,int) ;
 scalar_t__ disk_read (int ,int*,int,int) ;
 scalar_t__ disk_write (int ,int*,int,int) ;
 int get_fat (TYPE_3__*,int) ;
 int mem_cpy (int*,int*,scalar_t__) ;
 scalar_t__ move_window (TYPE_2__*,int) ;
 scalar_t__ validate (TYPE_3__*,TYPE_2__**) ;

FRESULT f_read (
 FIL* fp,
 void* buff,
 UINT btr,
 UINT* br
)
{
 FRESULT res;
 FATFS *fs;
 DWORD clst, sect;
 FSIZE_t remain;
 UINT rcnt, cc, csect;
 BYTE *rbuff = (BYTE*)buff;


 *br = 0;
 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);
 if (!(fp->flag & FA_READ)) LEAVE_FF(fs, FR_DENIED);
 remain = fp->obj.objsize - fp->fptr;
 if (btr > remain) btr = (UINT)remain;

 for ( ; btr;
  btr -= rcnt, *br += rcnt, rbuff += rcnt, fp->fptr += rcnt) {
  if (fp->fptr % SS(fs) == 0) {
   csect = (UINT)(fp->fptr / SS(fs) & (fs->csize - 1));
   if (csect == 0) {
    if (fp->fptr == 0) {
     clst = fp->obj.sclust;
    } else {





     {
      clst = get_fat(&fp->obj, fp->clust);
     }
    }
    if (clst < 2) ABORT(fs, FR_INT_ERR);
    if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
    fp->clust = clst;
   }
   sect = clst2sect(fs, fp->clust);
   if (sect == 0) ABORT(fs, FR_INT_ERR);
   sect += csect;
   cc = btr / SS(fs);
   if (cc > 0) {
    if (csect + cc > fs->csize) {
     cc = fs->csize - csect;
    }
    if (disk_read(fs->pdrv, rbuff, sect, cc) != RES_OK) ABORT(fs, FR_DISK_ERR);






    if ((fp->flag & FA_DIRTY) && fp->sect - sect < cc) {
     mem_cpy(rbuff + ((fp->sect - sect) * SS(fs)), fp->buf, SS(fs));
    }


    rcnt = SS(fs) * cc;
    continue;
   }

   if (fp->sect != sect) {

    if (fp->flag & FA_DIRTY) {
     if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
     fp->flag &= (BYTE)~FA_DIRTY;
    }

    if (disk_read(fs->pdrv, fp->buf, sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
   }

   fp->sect = sect;
  }
  rcnt = SS(fs) - (UINT)fp->fptr % SS(fs);
  if (rcnt > btr) rcnt = btr;




  mem_cpy(rbuff, fp->buf + fp->fptr % SS(fs), rcnt);

 }

 LEAVE_FF(fs, FR_OK);
}
