
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ temp; scalar_t__ permanent; scalar_t__ tempHighwater; } ;
typedef TYPE_1__ hunkUsed_t ;


 TYPE_1__* hunk_permanent ;
 TYPE_1__* hunk_temp ;

__attribute__((used)) static void Hunk_SwapBanks( void ) {
 hunkUsed_t *swap;


 if ( hunk_temp->temp != hunk_temp->permanent ) {
  return;
 }



 if ( hunk_temp->tempHighwater - hunk_temp->permanent >
  hunk_permanent->tempHighwater - hunk_permanent->permanent ) {
  swap = hunk_temp;
  hunk_temp = hunk_permanent;
  hunk_permanent = swap;
 }
}
