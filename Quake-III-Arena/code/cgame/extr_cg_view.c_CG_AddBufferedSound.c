
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sfxHandle_t ;
struct TYPE_2__ {size_t soundBufferIn; int soundBufferOut; scalar_t__* soundBuffer; } ;


 int MAX_SOUNDBUFFER ;
 TYPE_1__ cg ;

void CG_AddBufferedSound( sfxHandle_t sfx ) {
 if ( !sfx )
  return;
 cg.soundBuffer[cg.soundBufferIn] = sfx;
 cg.soundBufferIn = (cg.soundBufferIn + 1) % MAX_SOUNDBUFFER;
 if (cg.soundBufferIn == cg.soundBufferOut) {
  cg.soundBufferOut++;
 }
}
