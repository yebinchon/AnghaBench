
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct TYPE_2__ {size_t* CT; void*** MD; } ;


 TYPE_1__* ScuDsp ;

__attribute__((used)) static void writedmadest(u8 num, u32 val, u8 add)
{
   switch(num) {
      case 0x0:
          ScuDsp->MD[0][ScuDsp->CT[0]] = val;
          ScuDsp->CT[0]+=add;
          return;
      case 0x1:
          ScuDsp->MD[1][ScuDsp->CT[1]] = val;
          ScuDsp->CT[1]+=add;
          return;
      case 0x2:
          ScuDsp->MD[2][ScuDsp->CT[2]] = val;
          ScuDsp->CT[2]+=add;
          return;
      case 0x3:
          ScuDsp->MD[3][ScuDsp->CT[3]] = val;
          ScuDsp->CT[3]+=add;
          return;
      case 0x4:



          return;
      default: break;
   }
}
