
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int endpos; } ;
typedef TYPE_2__ trace_t ;
typedef int sfxHandle_t ;
struct TYPE_9__ {scalar_t__ leBounceSoundType; } ;
typedef TYPE_3__ localEntity_t ;
struct TYPE_7__ {int gibBounce3Sound; int gibBounce2Sound; int gibBounce1Sound; } ;
struct TYPE_10__ {TYPE_1__ media; } ;


 int CHAN_AUTO ;
 int ENTITYNUM_WORLD ;
 scalar_t__ LEBS_BLOOD ;
 scalar_t__ LEBS_BRASS ;
 scalar_t__ LEBS_NONE ;
 TYPE_4__ cgs ;
 int rand () ;
 int trap_S_StartSound (int ,int ,int ,int ) ;

void CG_FragmentBounceSound( localEntity_t *le, trace_t *trace ) {
 if ( le->leBounceSoundType == LEBS_BLOOD ) {

  if ( rand() & 1 ) {
   int r = rand()&3;
   sfxHandle_t s;

   if ( r == 0 ) {
    s = cgs.media.gibBounce1Sound;
   } else if ( r == 1 ) {
    s = cgs.media.gibBounce2Sound;
   } else {
    s = cgs.media.gibBounce3Sound;
   }
   trap_S_StartSound( trace->endpos, ENTITYNUM_WORLD, CHAN_AUTO, s );
  }
 } else if ( le->leBounceSoundType == LEBS_BRASS ) {

 }



 le->leBounceSoundType = LEBS_NONE;
}
