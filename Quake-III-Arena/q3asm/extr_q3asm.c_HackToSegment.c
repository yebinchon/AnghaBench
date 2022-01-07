
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t segmentName_t ;
struct TYPE_5__ {int value; TYPE_1__* segment; } ;
struct TYPE_4__ {int imageUsed; } ;


 TYPE_1__* currentSegment ;
 TYPE_2__* lastSymbol ;
 scalar_t__ passNumber ;
 TYPE_1__* segment ;

void HackToSegment( segmentName_t seg ) {
 if ( currentSegment == &segment[seg] ) {
  return;
 }

 currentSegment = &segment[seg];
 if ( passNumber == 0 ) {
  lastSymbol->segment = currentSegment;
  lastSymbol->value = currentSegment->imageUsed;
 }
}
