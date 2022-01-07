
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int clock_frequency_info_t ;
typedef int boot_args ;
struct TYPE_2__ {int timebase_frequency_hz; int bus_clock_rate_hz; int cpu_clock_rate_hz; int dec_clock_rate_hz; unsigned long long bus_frequency_hz; unsigned long bus_frequency_min_hz; unsigned long bus_frequency_max_hz; unsigned long long mem_frequency_hz; unsigned long mem_frequency_min_hz; unsigned long mem_frequency_max_hz; unsigned long long prf_frequency_hz; unsigned long prf_frequency_min_hz; unsigned long prf_frequency_max_hz; unsigned long long fix_frequency_hz; unsigned long long cpu_frequency_hz; unsigned long cpu_frequency_min_hz; unsigned long cpu_frequency_max_hz; int bus_clock_rate_num; int bus_clock_rate_den; int bus_to_cpu_rate_num; int bus_to_cpu_rate_den; int bus_to_dec_rate_num; int bus_to_dec_rate_den; } ;
typedef int OpaqueDTEntryIterator ;
typedef int DTEntry ;


 int DTGetProperty (int ,char*,void**,unsigned int*) ;
 int DTInitEntryIterator (int ,int *) ;
 int DTIterateEntries (int *,int *) ;
 int DTLookupEntry (int *,char*,int *) ;
 int assert (int) ;
 int bzero (void*,int) ;
 TYPE_1__ gPEClockFrequencyInfo ;
 int gPESoCDeviceType ;
 int gTCFG0Value ;
 int kSuccess ;
 scalar_t__ pe_arm_get_soc_base_phys () ;
 int strcmp (int ,char*) ;
 scalar_t__ strncmp (char*,char*,unsigned int) ;

void
pe_identify_machine(boot_args * bootArgs)
{
 OpaqueDTEntryIterator iter;
 DTEntry cpus, cpu;
 uint32_t mclk = 0, hclk = 0, pclk = 0, tclk = 0, use_dt = 0;
 unsigned long *value;
 unsigned int size;
 int err;

 (void)bootArgs;

 if (pe_arm_get_soc_base_phys() == 0)
  return;


 bzero((void *)&gPEClockFrequencyInfo, sizeof(clock_frequency_info_t));

 if (!strcmp(gPESoCDeviceType, "s3c2410-io")) {
  mclk = 192 << 23;
  hclk = mclk / 2;
  pclk = hclk / 2;
  tclk = (1 << (23 + 2)) / 10;
  tclk = pclk / tclk;

  gTCFG0Value = tclk - 1;

  tclk = pclk / (4 * tclk);



  mclk = (mclk >> 17) * (125 * 125);
  hclk = (hclk >> 17) * (125 * 125);
  pclk = (pclk >> 17) * (125 * 125);
  tclk = (((((tclk * 125) + 2) >> 2) * 125) + (1 << 14)) >> 15;

 } else if (!strcmp(gPESoCDeviceType, "integratorcp-io")) {
  mclk = 200000000;
  hclk = mclk / 2;
  pclk = hclk / 2;
  tclk = 100000;
 } else if (!strcmp(gPESoCDeviceType, "olocreek-io")) {
  mclk = 1000000000;
  hclk = mclk / 8;
  pclk = hclk / 2;
  tclk = pclk;
 } else if (!strcmp(gPESoCDeviceType, "omap3430sdp-io")) {
   mclk = 332000000;
   hclk = 19200000;
   pclk = hclk;
   tclk = pclk;
 } else if (!strcmp(gPESoCDeviceType, "s5i3000-io")) {
  mclk = 400000000;
  hclk = mclk / 4;
  pclk = hclk / 2;
  tclk = 100000;

 } else if (!strcmp(gPESoCDeviceType, "bcm2837-io")) {
  mclk = 1200000000;
  hclk = mclk / 4;
  pclk = hclk / 2;
  tclk = 1000000;
 } else
  use_dt = 1;

 if (use_dt) {

  gPEClockFrequencyInfo.timebase_frequency_hz = 24000000;
  gPEClockFrequencyInfo.bus_clock_rate_hz = 100000000;
  gPEClockFrequencyInfo.cpu_clock_rate_hz = 400000000;

  err = DTLookupEntry(((void*)0), "/cpus", &cpus);
  assert(err == kSuccess);

  err = DTInitEntryIterator(cpus, &iter);
  assert(err == kSuccess);

  while (kSuccess == DTIterateEntries(&iter, &cpu)) {
   if ((kSuccess != DTGetProperty(cpu, "state", (void **)&value, &size)) ||
       (strncmp((char*)value, "running", size) != 0))
    continue;


   if (DTGetProperty(cpu, "timebase-frequency", (void **)&value, &size) == kSuccess) {





    if (size == 8)
     gPEClockFrequencyInfo.timebase_frequency_hz = *(unsigned long long *)value;
    else
     gPEClockFrequencyInfo.timebase_frequency_hz = *value;
   }
   gPEClockFrequencyInfo.dec_clock_rate_hz = gPEClockFrequencyInfo.timebase_frequency_hz;


   if (DTGetProperty(cpu, "bus-frequency", (void **)&value, &size) == kSuccess) {
    if (size == 8)
     gPEClockFrequencyInfo.bus_frequency_hz = *(unsigned long long *)value;
    else
     gPEClockFrequencyInfo.bus_frequency_hz = *value;
   }
   gPEClockFrequencyInfo.bus_frequency_min_hz = gPEClockFrequencyInfo.bus_frequency_hz;
   gPEClockFrequencyInfo.bus_frequency_max_hz = gPEClockFrequencyInfo.bus_frequency_hz;

   if (gPEClockFrequencyInfo.bus_frequency_hz < 0x100000000ULL)
    gPEClockFrequencyInfo.bus_clock_rate_hz = gPEClockFrequencyInfo.bus_frequency_hz;
   else
    gPEClockFrequencyInfo.bus_clock_rate_hz = 0xFFFFFFFF;


   if (DTGetProperty(cpu, "memory-frequency", (void **)&value, &size) == kSuccess) {
    if (size == 8)
     gPEClockFrequencyInfo.mem_frequency_hz = *(unsigned long long *)value;
    else
     gPEClockFrequencyInfo.mem_frequency_hz = *value;
   }
   gPEClockFrequencyInfo.mem_frequency_min_hz = gPEClockFrequencyInfo.mem_frequency_hz;
   gPEClockFrequencyInfo.mem_frequency_max_hz = gPEClockFrequencyInfo.mem_frequency_hz;


   if (DTGetProperty(cpu, "peripheral-frequency", (void **)&value, &size) == kSuccess) {
    if (size == 8)
     gPEClockFrequencyInfo.prf_frequency_hz = *(unsigned long long *)value;
    else
     gPEClockFrequencyInfo.prf_frequency_hz = *value;
   }
   gPEClockFrequencyInfo.prf_frequency_min_hz = gPEClockFrequencyInfo.prf_frequency_hz;
   gPEClockFrequencyInfo.prf_frequency_max_hz = gPEClockFrequencyInfo.prf_frequency_hz;


   if (DTGetProperty(cpu, "fixed-frequency", (void **)&value, &size) == kSuccess) {
    if (size == 8)
     gPEClockFrequencyInfo.fix_frequency_hz = *(unsigned long long *)value;
    else
     gPEClockFrequencyInfo.fix_frequency_hz = *value;
   }

   if (DTGetProperty(cpu, "clock-frequency", (void **)&value, &size) == kSuccess) {
    if (size == 8)
     gPEClockFrequencyInfo.cpu_frequency_hz = *(unsigned long long *)value;
    else
     gPEClockFrequencyInfo.cpu_frequency_hz = *value;
   }
   gPEClockFrequencyInfo.cpu_frequency_min_hz = gPEClockFrequencyInfo.cpu_frequency_hz;
   gPEClockFrequencyInfo.cpu_frequency_max_hz = gPEClockFrequencyInfo.cpu_frequency_hz;

   if (gPEClockFrequencyInfo.cpu_frequency_hz < 0x100000000ULL)
    gPEClockFrequencyInfo.cpu_clock_rate_hz = gPEClockFrequencyInfo.cpu_frequency_hz;
   else
    gPEClockFrequencyInfo.cpu_clock_rate_hz = 0xFFFFFFFF;
  }
 } else {

  gPEClockFrequencyInfo.timebase_frequency_hz = tclk;
  gPEClockFrequencyInfo.fix_frequency_hz = tclk;
  gPEClockFrequencyInfo.bus_frequency_hz = hclk;
  gPEClockFrequencyInfo.cpu_frequency_hz = mclk;
  gPEClockFrequencyInfo.prf_frequency_hz = pclk;

  gPEClockFrequencyInfo.bus_frequency_min_hz = gPEClockFrequencyInfo.bus_frequency_hz;
  gPEClockFrequencyInfo.bus_frequency_max_hz = gPEClockFrequencyInfo.bus_frequency_hz;
  gPEClockFrequencyInfo.cpu_frequency_min_hz = gPEClockFrequencyInfo.cpu_frequency_hz;
  gPEClockFrequencyInfo.cpu_frequency_max_hz = gPEClockFrequencyInfo.cpu_frequency_hz;
  gPEClockFrequencyInfo.prf_frequency_min_hz = gPEClockFrequencyInfo.prf_frequency_hz;
  gPEClockFrequencyInfo.prf_frequency_max_hz = gPEClockFrequencyInfo.prf_frequency_hz;

  gPEClockFrequencyInfo.dec_clock_rate_hz = gPEClockFrequencyInfo.timebase_frequency_hz;
  gPEClockFrequencyInfo.bus_clock_rate_hz = gPEClockFrequencyInfo.bus_frequency_hz;
  gPEClockFrequencyInfo.cpu_clock_rate_hz = gPEClockFrequencyInfo.cpu_frequency_hz;
 }


 gPEClockFrequencyInfo.bus_clock_rate_num = gPEClockFrequencyInfo.bus_clock_rate_hz;
 gPEClockFrequencyInfo.bus_clock_rate_den = 1;

 gPEClockFrequencyInfo.bus_to_cpu_rate_num =
  (2 * gPEClockFrequencyInfo.cpu_clock_rate_hz) / gPEClockFrequencyInfo.bus_clock_rate_hz;
 gPEClockFrequencyInfo.bus_to_cpu_rate_den = 2;

 gPEClockFrequencyInfo.bus_to_dec_rate_num = 1;
 gPEClockFrequencyInfo.bus_to_dec_rate_den =
  gPEClockFrequencyInfo.bus_clock_rate_hz / gPEClockFrequencyInfo.dec_clock_rate_hz;
}
