
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_10__ {int fs_type; int* win; int fsize; int n_fats; int csize; int n_fatent; int volbase; int database; int fatbase; int dirbase; int bitbase; int last_clst; int free_clst; int n_rootdir; int fsi_flag; scalar_t__ cdir; int dirbuf; int lfnbuf; scalar_t__ id; int pdrv; } ;
typedef int TCHAR ;
typedef int QWORD ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef int DSTATUS ;
typedef int BYTE ;


 int BPB_BytsPerSec ;
 size_t BPB_BytsPerSecEx ;
 int BPB_DataOfsEx ;
 int BPB_FATSz16 ;
 int BPB_FATSz32 ;
 int BPB_FSInfo32 ;
 int BPB_FSVer32 ;
 int BPB_FSVerEx ;
 int BPB_FatOfsEx ;
 int BPB_FatSzEx ;
 int BPB_NumClusEx ;
 size_t BPB_NumFATs ;
 size_t BPB_NumFATsEx ;
 int BPB_RootClus32 ;
 int BPB_RootClusEx ;
 int BPB_RootEntCnt ;
 int BPB_RsvdSecCnt ;
 size_t BPB_SecPerClus ;
 size_t BPB_SecPerClusEx ;
 int BPB_TotSec16 ;
 int BPB_TotSec32 ;
 int BPB_TotSecEx ;
 int BPB_ZeroedEx ;
 int BS_55AA ;
 int DirBuf ;
 scalar_t__ ET_BITMAP ;
 scalar_t__ FA_READ ;
 int FF_FS_READONLY ;
 int FF_MAX_SS ;
 int FF_MIN_SS ;
 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_INVALID_DRIVE ;
 scalar_t__ FR_NOT_ENABLED ;
 scalar_t__ FR_NOT_READY ;
 scalar_t__ FR_NO_FILESYSTEM ;
 scalar_t__ FR_OK ;
 scalar_t__ FR_TIMEOUT ;
 scalar_t__ FR_WRITE_PROTECTED ;
 int FSI_Free_Count ;
 int FSI_LeadSig ;
 int FSI_Nxt_Free ;
 int FSI_StrucSig ;
 int FS_EXFAT ;
 int FS_FAT12 ;
 int FS_FAT16 ;
 int FS_FAT32 ;
 TYPE_1__** FatFs ;
 scalar_t__ Fsid ;
 int GET_SECTOR_SIZE ;
 int LD2PD (int) ;
 int LD2PT (int) ;
 int LfnBuf ;
 int MAX_EXFAT ;
 int MAX_FAT12 ;
 int MAX_FAT16 ;
 int MAX_FAT32 ;
 int MBR_Table ;
 int PTE_StLba ;
 size_t PTE_System ;
 scalar_t__ RES_OK ;
 int SS (TYPE_1__*) ;
 int STA_NOINIT ;
 int STA_PROTECT ;
 int SZDIRE ;
 int SZ_PTE ;
 int check_fs (TYPE_1__*,int) ;
 int clear_lock (TYPE_1__*) ;
 int clst2sect (TYPE_1__*,int) ;
 int disk_initialize (int ) ;
 scalar_t__ disk_ioctl (int ,int ,int*) ;
 int disk_status (int ) ;
 int get_ldnumber (int const**) ;
 int ld_dword (int*) ;
 int ld_qword (int*) ;
 int ld_word (scalar_t__*) ;
 int lock_fs (TYPE_1__*) ;
 scalar_t__ move_window (TYPE_1__*,int) ;

__attribute__((used)) static FRESULT find_volume (
 const TCHAR** path,
 FATFS** rfs,
 BYTE mode
)
{
 BYTE fmt, *pt;
 int vol;
 DSTATUS stat;
 DWORD bsect, fasize, tsect, sysect, nclst, szbfat, br[4];
 WORD nrsv;
 FATFS *fs;
 UINT i;



 *rfs = 0;
 vol = get_ldnumber(path);
 if (vol < 0) return FR_INVALID_DRIVE;


 fs = FatFs[vol];
 if (!fs) return FR_NOT_ENABLED;



 *rfs = fs;

 mode &= (BYTE)~FA_READ;
 if (fs->fs_type != 0) {
  stat = disk_status(fs->pdrv);
  if (!(stat & STA_NOINIT)) {
   if (!FF_FS_READONLY && mode && (stat & STA_PROTECT)) {
    return FR_WRITE_PROTECTED;
   }
   return FR_OK;
  }
 }




 fs->fs_type = 0;
 fs->pdrv = LD2PD(vol);
 stat = disk_initialize(fs->pdrv);
 if (stat & STA_NOINIT) {
  return FR_NOT_READY;
 }
 if (!FF_FS_READONLY && mode && (stat & STA_PROTECT)) {
  return FR_WRITE_PROTECTED;
 }






 bsect = 0;
 fmt = check_fs(fs, bsect);
 if (fmt == 2 || (fmt < 2 && LD2PT(vol) != 0)) {
  for (i = 0; i < 4; i++) {
   pt = fs->win + (MBR_Table + i * SZ_PTE);
   br[i] = pt[PTE_System] ? ld_dword(pt + PTE_StLba) : 0;
  }
  i = LD2PT(vol);
  if (i != 0) i--;
  do {
   bsect = br[i];
   fmt = bsect ? check_fs(fs, bsect) : 3;
  } while (LD2PT(vol) == 0 && fmt >= 2 && ++i < 4);
 }
 if (fmt == 4) return FR_DISK_ERR;
 if (fmt >= 2) return FR_NO_FILESYSTEM;
 {
  if (ld_word(fs->win + BPB_BytsPerSec) != SS(fs)) return FR_NO_FILESYSTEM;

  fasize = ld_word(fs->win + BPB_FATSz16);
  if (fasize == 0) fasize = ld_dword(fs->win + BPB_FATSz32);
  fs->fsize = fasize;

  fs->n_fats = fs->win[BPB_NumFATs];
  if (fs->n_fats != 1 && fs->n_fats != 2) return FR_NO_FILESYSTEM;
  fasize *= fs->n_fats;

  fs->csize = fs->win[BPB_SecPerClus];
  if (fs->csize == 0 || (fs->csize & (fs->csize - 1))) return FR_NO_FILESYSTEM;

  fs->n_rootdir = ld_word(fs->win + BPB_RootEntCnt);
  if (fs->n_rootdir % (SS(fs) / SZDIRE)) return FR_NO_FILESYSTEM;

  tsect = ld_word(fs->win + BPB_TotSec16);
  if (tsect == 0) tsect = ld_dword(fs->win + BPB_TotSec32);

  nrsv = ld_word(fs->win + BPB_RsvdSecCnt);
  if (nrsv == 0) return FR_NO_FILESYSTEM;


  sysect = nrsv + fasize + fs->n_rootdir / (SS(fs) / SZDIRE);
  if (tsect < sysect) return FR_NO_FILESYSTEM;
  nclst = (tsect - sysect) / fs->csize;
  if (nclst == 0) return FR_NO_FILESYSTEM;
  fmt = 0;
  if (nclst <= MAX_FAT32) fmt = FS_FAT32;
  if (nclst <= MAX_FAT16) fmt = FS_FAT16;
  if (nclst <= MAX_FAT12) fmt = FS_FAT12;
  if (fmt == 0) return FR_NO_FILESYSTEM;


  fs->n_fatent = nclst + 2;
  fs->volbase = bsect;
  fs->fatbase = bsect + nrsv;
  fs->database = bsect + sysect;
  if (fmt == FS_FAT32) {
   if (ld_word(fs->win + BPB_FSVer32) != 0) return FR_NO_FILESYSTEM;
   if (fs->n_rootdir != 0) return FR_NO_FILESYSTEM;
   fs->dirbase = ld_dword(fs->win + BPB_RootClus32);
   szbfat = fs->n_fatent * 4;
  } else {
   if (fs->n_rootdir == 0) return FR_NO_FILESYSTEM;
   fs->dirbase = fs->fatbase + fasize;
   szbfat = (fmt == FS_FAT16) ?
    fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
  }
  if (fs->fsize < (szbfat + (SS(fs) - 1)) / SS(fs)) return FR_NO_FILESYSTEM;



  fs->last_clst = fs->free_clst = 0xFFFFFFFF;
  fs->fsi_flag = 0x80;

  if (fmt == FS_FAT32
   && ld_word(fs->win + BPB_FSInfo32) == 1
   && move_window(fs, bsect + 1) == FR_OK)
  {
   fs->fsi_flag = 0;
   if (ld_word(fs->win + BS_55AA) == 0xAA55
    && ld_dword(fs->win + FSI_LeadSig) == 0x41615252
    && ld_dword(fs->win + FSI_StrucSig) == 0x61417272)
   {

    fs->free_clst = ld_dword(fs->win + FSI_Free_Count);


    fs->last_clst = ld_dword(fs->win + FSI_Nxt_Free);

   }
  }


 }

 fs->fs_type = fmt;
 fs->id = ++Fsid;
 return FR_OK;
}
