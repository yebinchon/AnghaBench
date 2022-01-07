
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef struct tbd_ops* tbd_ops_t ;
struct tbd_ops {int * member_2; int * member_1; int * member_0; } ;
struct TYPE_2__ {scalar_t__* timebase_frequency_hz; } ;
typedef scalar_t__ ARM_BOARD_WFE_TIMEOUT_NS ;


 int NSEC_PER_SEC ;
 int PMGR_EVENT_TMR_CTL_EN ;
 int PMGR_INTERVAL_TMR_CTL_CLR_INT ;
 int PMGR_INTERVAL_TMR_CTL_EN ;
 int aic_write32 (int ,int) ;
 struct tbd_ops bcm2837_funcs ;
 int fleh_fiq_generic ;
 TYPE_1__ gPEClockFrequencyInfo ;
 int gPESoCDeviceType ;
 int gPicBase ;
 int gSocPhys ;
 int gTimerBase ;
 int kAICTmrCfg ;
 int kAICTmrCfgEn ;
 int kAICTmrCnt ;
 int kAICTmrIntStat ;
 int kAICTmrIntStatPct ;
 int ml_init_timebase (void*,struct tbd_ops*,int ,int) ;
 int rPMGR_EVENT_TMR ;
 int rPMGR_EVENT_TMR_CTL ;
 int rPMGR_EVENT_TMR_PERIOD ;
 int rPMGR_INTERVAL_TMR ;
 int rPMGR_INTERVAL_TMR_CTL ;
 struct tbd_ops s5l8960x_funcs ;
 struct tbd_ops s7002_funcs ;
 struct tbd_ops s8000_funcs ;
 int strcmp (int ,char*) ;
 struct tbd_ops t7000_funcs ;
 struct tbd_ops t8002_funcs ;
 struct tbd_ops t8010_funcs ;
 struct tbd_ops t8011_funcs ;
 struct tbd_ops t8015_funcs ;

__attribute__((used)) static uint32_t
pe_arm_init_timer(void *args)
{
 vm_offset_t pic_base = 0;
 vm_offset_t timer_base = 0;
 vm_offset_t soc_phys;
 vm_offset_t eoi_addr = 0;
 uint32_t eoi_value = 0;
 struct tbd_ops generic_funcs = {&fleh_fiq_generic, ((void*)0), ((void*)0)};
 tbd_ops_t tbd_funcs = &generic_funcs;


 pic_base = gPicBase;
 timer_base = gTimerBase;
 soc_phys = gSocPhys;
  return 0;

 if (args != ((void*)0))
  ml_init_timebase(args, tbd_funcs, eoi_addr, eoi_value);

 return 1;
}
