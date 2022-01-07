
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int GCAP_ID; } ;
typedef TYPE_1__ hpetReg_t ;


 int DBG (char*,...) ;
 int Mega ;
 int PAGE_SIZE ;
 int Peta ;
 int VM_WIMG_IO ;
 int bus2hpet ;
 int busFCvtn2t ;
 unsigned long long busFCvtt2n ;
 int hpet2bus ;
 int hpet2tsc ;
 int hpetAddr ;
 scalar_t__ hpetArea ;
 int hpetAreap ;
 unsigned long long hpetCvt ;
 int hpetCvtn2t ;
 unsigned long long hpetCvtt2n ;
 int hpetFemto ;
 int hpetFreq ;
 int hptcAE ;
 scalar_t__ io_map_spec (int,int,int ) ;
 int kprintf (char*,int,int,...) ;
 int map_rcbaArea () ;
 scalar_t__ rcbaArea ;
 int tmrCvt (unsigned long long,int) ;
 int tsc2hpet ;
 int tscFCvtn2t ;
 unsigned long long tscFCvtt2n ;

void
hpet_init(void)
{
 unsigned int *xmod;

 map_rcbaArea();





 xmod = (uint32_t *)(rcbaArea + 0x3404);
 uint32_t hptc = *xmod;
 DBG("    current RCBA.HPTC:  %08X\n", *xmod);
 if(!(hptc & hptcAE)) {
  DBG("HPET memory is not enabled, "
      "enabling and assigning to 0xFED00000 (hope that's ok)\n");
  *xmod = (hptc & ~3) | hptcAE;
 }




 hpetAreap = hpetAddr | ((hptc & 3) << 12);
 hpetArea = io_map_spec(hpetAreap & -4096, PAGE_SIZE * 4, VM_WIMG_IO);
 kprintf("HPET: vaddr = %lX, paddr = %08X\n", (unsigned long)hpetArea, hpetAreap);






 hpetFemto = (uint32_t)(((hpetReg_t *)hpetArea)->GCAP_ID >> 32);
 hpetFreq = (1 * Peta) / hpetFemto;
 hpetCvtt2n = (uint64_t)hpetFemto << 32;
 hpetCvtt2n = hpetCvtt2n / 1000000ULL;
 hpetCvtn2t = 0xFFFFFFFFFFFFFFFFULL / hpetCvtt2n;
 kprintf("HPET: Frequency = %6d.%04dMHz, "
  "cvtt2n = %08X.%08X, cvtn2t = %08X.%08X\n",
  (uint32_t)(hpetFreq / Mega), (uint32_t)(hpetFreq % Mega),
  (uint32_t)(hpetCvtt2n >> 32), (uint32_t)hpetCvtt2n,
  (uint32_t)(hpetCvtn2t >> 32), (uint32_t)hpetCvtn2t);






 hpetCvt = (uint64_t)hpetFemto << 20;
 hpetCvt = hpetCvt / 1000000ULL;


 tsc2hpet = tmrCvt(tscFCvtt2n, hpetCvtn2t);
 DBG(" CVT: TSC to HPET = %08X.%08X\n",
     (uint32_t)(tsc2hpet >> 32), (uint32_t)tsc2hpet);


 hpet2tsc = tmrCvt(hpetCvtt2n, tscFCvtn2t);
 DBG(" CVT: HPET to TSC = %08X.%08X\n",
     (uint32_t)(hpet2tsc >> 32), (uint32_t)hpet2tsc);


 bus2hpet = tmrCvt(busFCvtt2n, hpetCvtn2t);
 DBG(" CVT: BUS to HPET = %08X.%08X\n",
     (uint32_t)(bus2hpet >> 32), (uint32_t)bus2hpet);


 hpet2bus = tmrCvt(hpetCvtt2n, busFCvtn2t);
 DBG(" CVT: HPET to BUS = %08X.%08X\n",
     (uint32_t)(hpet2bus >> 32), (uint32_t)hpet2bus);
}
