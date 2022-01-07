
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* gr; } ;
struct TYPE_3__ {int h; } ;


 int PROGRAM (int) ;
 int SSP_A ;
 int SSP_AL ;
 int SSP_P ;
 size_t SSP_PC ;
 TYPE_2__ known_regs ;

__attribute__((used)) static int tr_predict_al_need(void)
{
 int tmpv, tmpv2, op, pc = known_regs.gr[SSP_PC].h;

 while (1)
 {
  op = PROGRAM(pc);
  switch (op >> 9)
  {

   case 0x00:
    tmpv2 = (op >> 4) & 0xf;
    tmpv = op & 0xf;
    if ((tmpv2 == SSP_A && tmpv == SSP_P) || tmpv2 == SSP_AL)
     return 0;
    break;


   case 0x02:

   case 0x0a:

   case 0x10: case 0x30: case 0x40: case 0x60: case 0x70:
    tmpv = op & 0xf;
    if (tmpv == SSP_AL)
     return 1;
    break;

   case 0x04:
   case 0x06:
   case 0x14:
   case 0x34:
   case 0x44:
   case 0x64:
   case 0x74: pc++; break;


   case 0x24:

   case 0x26:

   case 0x48:

   case 0x1b:

   case 0x4b: return 1;


   case 0x5b: return 0;


   case 0x50:
    tmpv = op & 0xf;
    if (tmpv == SSP_AL) return 1;
   case 0x51: case 0x53: case 0x54: case 0x55: case 0x59: case 0x5c:
    return 0;
  }
  pc++;
 }
}
