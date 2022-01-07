
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {size_t* r0; size_t* r1; void** RAM1; void** RAM0; } ;


 int CHECK_RPL () ;
 TYPE_1__* ssp ;

__attribute__((used)) static void ptr1_write(int op, u32 d)
{
 int t = (op&3) | ((op>>6)&4) | ((op<<1)&0x18);
 switch (t)
 {

  case 0x00:
  case 0x01:
  case 0x02: ssp->RAM0[ssp->r0[t&3]] = d; return;
  case 0x03: ssp->RAM0[0] = d; return;
  case 0x04:
  case 0x05:
  case 0x06: ssp->RAM1[ssp->r1[t&3]] = d; return;
  case 0x07: ssp->RAM1[0] = d; return;


  case 0x08:
  case 0x09:
  case 0x0a: ssp->RAM0[ssp->r0[t&3]++] = d; return;
  case 0x0b: ssp->RAM0[1] = d; return;
  case 0x0c:
  case 0x0d:
  case 0x0e: ssp->RAM1[ssp->r1[t&3]++] = d; return;
  case 0x0f: ssp->RAM1[1] = d; return;

  case 0x10:
  case 0x11:
  case 0x12: ssp->RAM0[ssp->r0[t&3]--] = d; CHECK_RPL(); return;
  case 0x13: ssp->RAM0[2] = d; return;
  case 0x14:
  case 0x15:
  case 0x16: ssp->RAM1[ssp->r1[t&3]--] = d; CHECK_RPL(); return;
  case 0x17: ssp->RAM1[2] = d; return;

  case 0x18:
  case 0x19:
  case 0x1a: ssp->RAM0[ssp->r0[t&3]++] = d; CHECK_RPL(); return;
  case 0x1b: ssp->RAM0[3] = d; return;
  case 0x1c:
  case 0x1d:
  case 0x1e: ssp->RAM1[ssp->r1[t&3]++] = d; CHECK_RPL(); return;
  case 0x1f: ssp->RAM1[3] = d; return;
 }
}
