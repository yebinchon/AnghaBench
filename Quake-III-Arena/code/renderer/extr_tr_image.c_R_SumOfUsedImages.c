
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numImages; scalar_t__ frameCount; TYPE_1__** images; } ;
struct TYPE_3__ {scalar_t__ frameUsed; int uploadWidth; int uploadHeight; } ;


 TYPE_2__ tr ;

int R_SumOfUsedImages( void ) {
 int total;
 int i;

 total = 0;
 for ( i = 0; i < tr.numImages; i++ ) {
  if ( tr.images[i]->frameUsed == tr.frameCount ) {
   total += tr.images[i]->uploadWidth * tr.images[i]->uploadHeight;
  }
 }

 return total;
}
