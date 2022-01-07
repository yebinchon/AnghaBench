
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {scalar_t__ writebuff0; } ;
typedef int INT32 ;


 scalar_t__ CHECK_BUSY (int ) ;
 int JOB940_PICOSTATESAVE2 ;
 int * YM2612GetRegs () ;
 int add_job_940 (int ) ;
 int memcpy (int *,int *,int) ;
 int printf (char*) ;
 TYPE_1__* shared_ctl ;
 int wait_busy_940 (int ) ;

void YM2612PicoStateSave2_940(int tat, int tbt)
{
 UINT8 *ym_remote_regs, *ym_local_regs;
 add_job_940(JOB940_PICOSTATESAVE2);
 if (CHECK_BUSY(JOB940_PICOSTATESAVE2)) wait_busy_940(JOB940_PICOSTATESAVE2);

 ym_remote_regs = (UINT8 *) shared_ctl->writebuff0;
 ym_local_regs = YM2612GetRegs();
 if (*(UINT32 *)(ym_remote_regs + 0x100) != 0x41534d59) {
  printf("code940 didn't return valid save data\n");
  return;
 }


 memcpy(ym_local_regs, ym_remote_regs, 0x20);
 memcpy(ym_local_regs + 0x100, ym_remote_regs + 0x100, 0x30);
 memcpy(ym_local_regs + 0x0b8, ym_remote_regs + 0x0b8, 0x48);
 memcpy(ym_local_regs + 0x1b8, ym_remote_regs + 0x1b8, 0x48);
 *(INT32 *)(ym_local_regs + 0x108) = tat;
 *(INT32 *)(ym_local_regs + 0x10c) = tbt;
}
