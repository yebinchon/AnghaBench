
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int painTime; int painDirection; } ;
struct TYPE_6__ {int number; } ;
struct TYPE_8__ {TYPE_2__ pe; TYPE_1__ currentState; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_9__ {int time; } ;


 int CG_CustomSound (int ,char*) ;
 int CHAN_VOICE ;
 TYPE_4__ cg ;
 int trap_S_StartSound (int *,int ,int ,int ) ;

void CG_PainEvent( centity_t *cent, int health ) {
 char *snd;


 if ( cg.time - cent->pe.painTime < 500 ) {
  return;
 }

 if ( health < 25 ) {
  snd = "*pain25_1.wav";
 } else if ( health < 50 ) {
  snd = "*pain50_1.wav";
 } else if ( health < 75 ) {
  snd = "*pain75_1.wav";
 } else {
  snd = "*pain100_1.wav";
 }
 trap_S_StartSound( ((void*)0), cent->currentState.number, CHAN_VOICE,
  CG_CustomSound( cent->currentState.number, snd ) );


 cent->pe.painTime = cg.time;
 cent->pe.painDirection ^= 1;
}
