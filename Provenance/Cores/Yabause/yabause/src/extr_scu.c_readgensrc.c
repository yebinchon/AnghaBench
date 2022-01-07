
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int L; } ;
struct TYPE_5__ {int all; TYPE_1__ part; } ;
struct TYPE_6__ {size_t* CT; TYPE_2__ ALU; int ** MD; } ;


 TYPE_3__* ScuDsp ;
 int* incFlg ;

__attribute__((used)) static u32 readgensrc(u8 num)
{
   u32 val;
   switch(num) {
      case 0x0:
         return ScuDsp->MD[0][ScuDsp->CT[0]];
      case 0x1:
         return ScuDsp->MD[1][ScuDsp->CT[1]];
      case 0x2:
         return ScuDsp->MD[2][ScuDsp->CT[2]];
      case 0x3:
         return ScuDsp->MD[3][ScuDsp->CT[3]];
      case 0x4:
         val = ScuDsp->MD[0][ScuDsp->CT[0]];
         incFlg[0] = 1;
         return val;
      case 0x5:
         val = ScuDsp->MD[1][ScuDsp->CT[1]];
         incFlg[1] = 1;
         return val;
      case 0x6:
         val = ScuDsp->MD[2][ScuDsp->CT[2]];
         incFlg[2] = 1;
         return val;
      case 0x7:
         val = ScuDsp->MD[3][ScuDsp->CT[3]];
         incFlg[3] = 1;
         return val;
      case 0x9:
         return (u32)ScuDsp->ALU.part.L;
      case 0xA:
         return (u32)((ScuDsp->ALU.all & (u64)(0x0000ffffffff0000)) >> 16);
      default: break;
   }

   return 0;
}
