
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display {unsigned int size; int min_windowBits; } ;
struct TYPE_2__ {scalar_t__ name; int value; } ;


 int MAX_WBITS ;
 int OPTIND (struct display*,int ) ;
 TYPE_1__* VLNAME (int ) ;
 int VLSIZE (int ) ;
 int assert (int) ;
 scalar_t__ range_hi ;
 scalar_t__ range_lo ;
 int windowBits ;
 int windowBits_IDAT ;

__attribute__((used)) static void
set_windowBits_hi(struct display *dp)
{



   int wb = MAX_WBITS;
   int i = VLSIZE(windowBits_IDAT);

   while (wb > 8 && dp->size <= 1U<<(wb-1)) --wb;

   while (--i >= 0) if (VLNAME(windowBits_IDAT)[i].name == range_hi) break;

   assert(i > 1);
   VLNAME(windowBits_IDAT)[i].value = wb;

   assert(VLNAME(windowBits_IDAT)[--i].name == range_lo);
   VLNAME(windowBits_IDAT)[i].value = wb > 8 ? 9 : 8;





   if (wb == 8)
      dp->min_windowBits = OPTIND(dp, windowBits);
}
