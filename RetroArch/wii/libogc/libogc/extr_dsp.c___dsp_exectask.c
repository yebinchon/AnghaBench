
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ state; int dram_addr; int dram_len; scalar_t__ dram_maddr; int resume_vec; int init_vec; int iram_addr; int iram_len; scalar_t__ iram_maddr; } ;
typedef TYPE_1__ dsptask_t ;


 scalar_t__ DSPTASK_INIT ;
 scalar_t__ DSP_CheckMailTo () ;
 int DSP_SendMailTo (int ) ;

__attribute__((used)) static void __dsp_exectask(dsptask_t *exec,dsptask_t *hire)
{
 if(!exec) {
  DSP_SendMailTo(0);
  while(DSP_CheckMailTo());
  DSP_SendMailTo(0);
  while(DSP_CheckMailTo());
  DSP_SendMailTo(0);
  while(DSP_CheckMailTo());
 } else {
  DSP_SendMailTo((u32)exec->dram_maddr);
  while(DSP_CheckMailTo());
  DSP_SendMailTo(exec->dram_len);
  while(DSP_CheckMailTo());
  DSP_SendMailTo(exec->dram_addr);
  while(DSP_CheckMailTo());
 }

 DSP_SendMailTo((u32)hire->iram_maddr);
 while(DSP_CheckMailTo());
 DSP_SendMailTo(hire->iram_len);
 while(DSP_CheckMailTo());
 DSP_SendMailTo(hire->iram_addr);
 while(DSP_CheckMailTo());
 if(hire->state==DSPTASK_INIT) {
  DSP_SendMailTo(hire->init_vec);
  while(DSP_CheckMailTo());
  DSP_SendMailTo(0);
  while(DSP_CheckMailTo());
  DSP_SendMailTo(0);
  while(DSP_CheckMailTo());
  DSP_SendMailTo(0);
  while(DSP_CheckMailTo());
  return;
 }

 DSP_SendMailTo(hire->resume_vec);
 while(DSP_CheckMailTo());

 DSP_SendMailTo((u32)hire->dram_maddr);
 while(DSP_CheckMailTo());
 DSP_SendMailTo(hire->dram_len);
 while(DSP_CheckMailTo());
 DSP_SendMailTo(hire->dram_addr);
 while(DSP_CheckMailTo());
}
