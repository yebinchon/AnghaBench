
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {size_t* CT; int ** MD; } ;


 TYPE_1__* ScuDsp ;

__attribute__((used)) static u32 readdmasrc(u8 num, u8 add)
{
   u32 val;

   switch(num) {
      case 0x0:
         val = ScuDsp->MD[0][ScuDsp->CT[0]];
         ScuDsp->CT[0]+=add;
         return val;
      case 0x1:
         val = ScuDsp->MD[1][ScuDsp->CT[1]];
         ScuDsp->CT[1]+=add;
         return val;
      case 0x2:
         val = ScuDsp->MD[2][ScuDsp->CT[2]];
         ScuDsp->CT[2]+=add;
         return val;
      case 0x3:
         val = ScuDsp->MD[3][ScuDsp->CT[3]];
         ScuDsp->CT[3]+=add;
         return val;
      default: break;
   }

   return 0;
}
