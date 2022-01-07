
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iram_rom; } ;


 int EL_ANOMALY ;
 int elprintf (int ,char*,int,int ) ;
 int* iram_context_map ;
 int rPC ;
 TYPE_1__* svp ;

int ssp_get_iram_context(void)
{
 unsigned char *ir = (unsigned char *)svp->iram_rom;
 int val1, val = ir[0x083^1] + ir[0x4FA^1] + ir[0x5F7^1] + ir[0x47B^1];
 val1 = iram_context_map[(val>>1)&0x3f];

 if (val1 == 0) {
  elprintf(EL_ANOMALY, "svp: iram ctx val: %02x PC=%04x\n", (val>>1)&0x3f, rPC);


 }
 return val1;
}
