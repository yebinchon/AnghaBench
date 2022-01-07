
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {size_t mslc; TYPE_1__* slot; } ;
struct TYPE_3__ {int addr_counter; int env_phase; int last_env; } ;






 int SCSP_FREQ_LOW_BITS ;
 TYPE_2__ scsp ;

__attribute__((used)) static u16 ScspReadMonitor(void)
{
   u8 ca, sgc, eg;

   ca = (scsp.slot[scsp.mslc].addr_counter >> (SCSP_FREQ_LOW_BITS + 12)) & 0xF;

   switch (scsp.slot[scsp.mslc].env_phase) {
      case 131:
         sgc = 0;
         break;
      case 130:
         sgc = 1;
         break;
      case 128:
         sgc = 2;
         break;
      case 129:
         sgc = 3;
         break;
   }

   eg = 0x1f - (scsp.slot[scsp.mslc].last_env >> 27);

   return (ca << 7) | (sgc << 5) | eg;
}
