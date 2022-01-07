
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sobj; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;


 scalar_t__ FR_INVALID_DRIVE ;
 scalar_t__ FR_NOT_ENABLED ;
 scalar_t__ FR_TIMEOUT ;
 int ff_rel_grant (int ) ;

__attribute__((used)) static void unlock_fs (
 FATFS* fs,
 FRESULT res
)
{
 if (fs && res != FR_NOT_ENABLED && res != FR_INVALID_DRIVE && res != FR_TIMEOUT) {
  ff_rel_grant(fs->sobj);
 }
}
