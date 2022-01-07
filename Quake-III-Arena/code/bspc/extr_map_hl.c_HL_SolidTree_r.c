
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int contents; } ;
struct TYPE_3__ {int* children; } ;
 TYPE_2__* hl_dleafs ;
 TYPE_1__* hl_dnodes ;

int HL_SolidTree_r(int nodenum)
{
 if (nodenum < 0)
 {
  switch(hl_dleafs[(-nodenum) - 1].contents)
  {
   case 135:
   {
    return 0;
   }
   case 130:



   case 132:



   {
    return 1;
   }
   case 128:
   case 131:
   case 134:
   default:
   {
    return 0;
   }
  }
  return 0;
 }
 if (!HL_SolidTree_r(hl_dnodes[nodenum].children[0])) return 0;
 if (!HL_SolidTree_r(hl_dnodes[nodenum].children[1])) return 0;
 return 1;
}
