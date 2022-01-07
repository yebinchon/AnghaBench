
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JOB940_YM2612RESETCHIP ;
 int YM2612ResetChip_ () ;
 int add_job_940 (int ) ;
 int internal_reset () ;
 int printf (char*) ;
 int * shared_data ;

void YM2612ResetChip_940(void)
{

 if (shared_data == ((void*)0)) {
  printf("YM2612ResetChip_940: reset before init?\n");
  return;
 }

 YM2612ResetChip_();
 internal_reset();

 add_job_940(JOB940_YM2612RESETCHIP);
}
