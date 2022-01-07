
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int* writebuff0; int writebuffsel; int* writebuff1; } ;
typedef int INT32 ;


 scalar_t__ CHECK_BUSY (int ) ;
 int JOB940_PICOSTATELOAD2 ;
 int JOB940_PICOSTATELOAD2_PREP ;
 int JOB940_YM2612UPDATEONE ;
 int * YM2612GetRegs () ;
 int add_job_940 (int ) ;
 int memcpy (int *,int *,int) ;
 TYPE_1__* shared_ctl ;
 int wait_busy_940 (int ) ;
 int writebuff_ptr ;

int YM2612PicoStateLoad2_940(int *tat, int *tbt)
{
 UINT8 *ym_remote_regs, *ym_local_regs;
 ym_local_regs = YM2612GetRegs();
 ym_remote_regs = (UINT8 *) shared_ctl->writebuff0;

 if (*(UINT32 *)(ym_local_regs + 0x100) != 0x41534d59)
  return -1;

 *tat = *(INT32 *)(ym_local_regs + 0x108);
 *tbt = *(INT32 *)(ym_local_regs + 0x10c);

 if (CHECK_BUSY(JOB940_YM2612UPDATEONE)) wait_busy_940(JOB940_YM2612UPDATEONE);


 if (shared_ctl->writebuffsel == 1) {
  shared_ctl->writebuff0[writebuff_ptr & 0xffff] = 0xffff;
 } else {
  shared_ctl->writebuff1[writebuff_ptr & 0xffff] = 0xffff;
 }
 shared_ctl->writebuffsel ^= 1;
 writebuff_ptr = 0;
 add_job_940(JOB940_PICOSTATELOAD2_PREP);
 if (CHECK_BUSY(JOB940_PICOSTATELOAD2_PREP)) wait_busy_940(JOB940_PICOSTATELOAD2_PREP);

 memcpy(ym_remote_regs, ym_local_regs, 0x200);

 add_job_940(JOB940_PICOSTATELOAD2);
 if (CHECK_BUSY(JOB940_PICOSTATELOAD2)) wait_busy_940(JOB940_PICOSTATELOAD2);

 return 0;
}
