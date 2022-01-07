
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int winsect; int* win; scalar_t__ wflag; } ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 int BS_55AA ;
 int BS_FilSysType ;
 int BS_FilSysType32 ;
 int BS_JmpBoot ;
 scalar_t__ FR_OK ;
 int ld_word (int*) ;
 int mem_cmp (int*,char*,int) ;
 scalar_t__ move_window (TYPE_1__*,int ) ;

__attribute__((used)) static BYTE check_fs (
 FATFS* fs,
 DWORD sect
)
{
 fs->wflag = 0; fs->winsect = 0xFFFFFFFF;
 if (move_window(fs, sect) != FR_OK) return 4;

 if (ld_word(fs->win + BS_55AA) != 0xAA55) return 3;




 if (fs->win[BS_JmpBoot] == 0xE9 || fs->win[BS_JmpBoot] == 0xEB || fs->win[BS_JmpBoot] == 0xE8) {
  if (!mem_cmp(fs->win + BS_FilSysType, "FAT", 3)) return 0;
  if (!mem_cmp(fs->win + BS_FilSysType32, "FAT32", 5)) return 0;
 }
 return 2;
}
