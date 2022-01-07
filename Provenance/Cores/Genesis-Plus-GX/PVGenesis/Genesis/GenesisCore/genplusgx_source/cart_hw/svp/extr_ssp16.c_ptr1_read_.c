
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int* RAM0; int* RAM1; } ;
struct TYPE_9__ {TYPE_3__ bank; } ;
struct TYPE_6__ {size_t* r0; size_t* r1; } ;
struct TYPE_7__ {TYPE_1__ bank; } ;
struct TYPE_10__ {TYPE_4__ mem; TYPE_2__ ptr; } ;


 int rST ;
 TYPE_5__* ssp ;

__attribute__((used)) static u32 ptr1_read_(int ri, int isj2, int modi3)
{

  u32 mask, add = 0, t = ri | isj2 | modi3;
  unsigned char *rp = ((void*)0);
  switch (t)
  {

    case 0x00:
    case 0x01:
    case 0x02: return ssp->mem.bank.RAM0[ssp->ptr.bank.r0[t&3]];
    case 0x03: return ssp->mem.bank.RAM0[0];
    case 0x04:
    case 0x05:
    case 0x06: return ssp->mem.bank.RAM1[ssp->ptr.bank.r1[t&3]];
    case 0x07: return ssp->mem.bank.RAM1[0];

    case 0x08:
    case 0x09:
    case 0x0a: return ssp->mem.bank.RAM0[ssp->ptr.bank.r0[t&3]++];
    case 0x0b: return ssp->mem.bank.RAM0[1];
    case 0x0c:
    case 0x0d:
    case 0x0e: return ssp->mem.bank.RAM1[ssp->ptr.bank.r1[t&3]++];
    case 0x0f: return ssp->mem.bank.RAM1[1];

    case 0x10:
    case 0x11:
    case 0x12: rp = &ssp->ptr.bank.r0[t&3]; t = ssp->mem.bank.RAM0[*rp];
               if (!(rST&7)) { (*rp)--; return t; }
               add = -1; goto modulo;
    case 0x13: return ssp->mem.bank.RAM0[2];
    case 0x14:
    case 0x15:
    case 0x16: rp = &ssp->ptr.bank.r1[t&3]; t = ssp->mem.bank.RAM1[*rp];
               if (!(rST&7)) { (*rp)--; return t; }
               add = -1; goto modulo;
    case 0x17: return ssp->mem.bank.RAM1[2];

    case 0x18:
    case 0x19:
    case 0x1a: rp = &ssp->ptr.bank.r0[t&3]; t = ssp->mem.bank.RAM0[*rp];
               if (!(rST&7)) { (*rp)++; return t; }
               add = 1; goto modulo;
    case 0x1b: return ssp->mem.bank.RAM0[3];
    case 0x1c:
    case 0x1d:
    case 0x1e: rp = &ssp->ptr.bank.r1[t&3]; t = ssp->mem.bank.RAM1[*rp];
               if (!(rST&7)) { (*rp)++; return t; }
               add = 1; goto modulo;
    case 0x1f: return ssp->mem.bank.RAM1[3];
  }

  return 0;

modulo:
  mask = (1 << (rST&7)) - 1;
  *rp = (*rp & ~mask) | ((*rp + add) & mask);
  return t;
}
