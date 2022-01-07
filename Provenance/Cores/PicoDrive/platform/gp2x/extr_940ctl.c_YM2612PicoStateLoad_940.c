
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int INT32 ;


 scalar_t__ CHECK_BUSY (int ) ;
 int JOB940_PICOSTATELOAD ;
 int * YM2612GetRegs () ;
 int add_job_940 (int ) ;
 int addr_A1 ;
 int wait_busy_940 (int ) ;
 scalar_t__ writebuff_ptr ;

void YM2612PicoStateLoad_940(void)
{
 UINT8 *REGS = YM2612GetRegs();


 add_job_940(JOB940_PICOSTATELOAD);
 if (CHECK_BUSY(JOB940_PICOSTATELOAD)) wait_busy_940(JOB940_PICOSTATELOAD);

 writebuff_ptr = 0;
 addr_A1 = *(INT32 *) (REGS + 0x200);
}
