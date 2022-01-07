
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned short u32 ;
struct TYPE_9__ {int * RAM1; int * RAM0; } ;
struct TYPE_10__ {TYPE_3__ bank; } ;
struct TYPE_7__ {size_t* r0; size_t* r1; } ;
struct TYPE_8__ {TYPE_1__ bank; } ;
struct TYPE_12__ {TYPE_4__ mem; TYPE_2__ ptr; } ;
struct TYPE_11__ {scalar_t__ iram_rom; } ;


 int EL_ANOMALY ;
 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int elprintf (int,char*,int ) ;
 TYPE_6__* ssp ;
 TYPE_5__* svp ;

__attribute__((used)) static u32 ptr2_read(int op)
{
  int mv = 0, t = (op&3) | ((op>>6)&4) | ((op<<1)&0x18);
  switch (t)
  {

    case 0x00:
    case 0x01:
    case 0x02: mv = ssp->mem.bank.RAM0[ssp->ptr.bank.r0[t&3]]++; break;
    case 0x03: mv = ssp->mem.bank.RAM0[0]++; break;
    case 0x04:
    case 0x05:
    case 0x06: mv = ssp->mem.bank.RAM1[ssp->ptr.bank.r1[t&3]]++; break;
    case 0x07: mv = ssp->mem.bank.RAM1[0]++; break;

    case 0x0b: mv = ssp->mem.bank.RAM0[1]++; break;
    case 0x0f: mv = ssp->mem.bank.RAM1[1]++; break;

    case 0x13: mv = ssp->mem.bank.RAM0[2]++; break;
    case 0x17: mv = ssp->mem.bank.RAM1[2]++; break;

    case 0x1b: mv = ssp->mem.bank.RAM0[3]++; break;
    case 0x1f: mv = ssp->mem.bank.RAM1[3]++; break;
    default:



      return 0;
  }

  return ((unsigned short *)svp->iram_rom)[mv];
}
