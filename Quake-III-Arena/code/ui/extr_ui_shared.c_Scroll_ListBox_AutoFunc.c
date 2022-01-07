
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nextScrollTime; scalar_t__ adjustValue; scalar_t__ nextAdjustTime; int scrollKey; int item; } ;
typedef TYPE_1__ scrollInfo_t ;
struct TYPE_4__ {scalar_t__ realTime; } ;


 TYPE_2__* DC ;
 int Item_ListBox_HandleKey (int ,int ,int ,int ) ;
 scalar_t__ SCROLL_TIME_ADJUST ;
 scalar_t__ SCROLL_TIME_ADJUSTOFFSET ;
 scalar_t__ SCROLL_TIME_FLOOR ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static void Scroll_ListBox_AutoFunc(void *p) {
 scrollInfo_t *si = (scrollInfo_t*)p;
 if (DC->realTime > si->nextScrollTime) {



  Item_ListBox_HandleKey(si->item, si->scrollKey, qtrue, qfalse);
  si->nextScrollTime = DC->realTime + si->adjustValue;
 }

 if (DC->realTime > si->nextAdjustTime) {
  si->nextAdjustTime = DC->realTime + SCROLL_TIME_ADJUST;
  if (si->adjustValue > SCROLL_TIME_FLOOR) {
   si->adjustValue -= SCROLL_TIME_ADJUSTOFFSET;
  }
 }
}
