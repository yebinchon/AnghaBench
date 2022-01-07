
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ soundTime; scalar_t__ time; size_t soundBufferOut; size_t soundBufferIn; scalar_t__* soundBuffer; } ;


 int CHAN_ANNOUNCER ;
 int MAX_SOUNDBUFFER ;
 TYPE_1__ cg ;
 int trap_S_StartLocalSound (scalar_t__,int ) ;

__attribute__((used)) static void CG_PlayBufferedSounds( void ) {
 if ( cg.soundTime < cg.time ) {
  if (cg.soundBufferOut != cg.soundBufferIn && cg.soundBuffer[cg.soundBufferOut]) {
   trap_S_StartLocalSound(cg.soundBuffer[cg.soundBufferOut], CHAN_ANNOUNCER);
   cg.soundBuffer[cg.soundBufferOut] = 0;
   cg.soundBufferOut = (cg.soundBufferOut + 1) % MAX_SOUNDBUFFER;
   cg.soundTime = cg.time + 750;
  }
 }
}
