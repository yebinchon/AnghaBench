
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ps; } ;
struct TYPE_5__ {int walking; } ;
struct TYPE_4__ {int velocity; } ;


 int VectorClear (int ) ;
 float VectorLength (int ) ;
 int VectorNormalize (int ) ;
 int VectorScale (int ,float,int ) ;
 TYPE_3__* pm ;
 TYPE_2__ pml ;

__attribute__((used)) static void PM_DeadMove( void ) {
 float forward;

 if ( !pml.walking ) {
  return;
 }



 forward = VectorLength (pm->ps->velocity);
 forward -= 20;
 if ( forward <= 0 ) {
  VectorClear (pm->ps->velocity);
 } else {
  VectorNormalize (pm->ps->velocity);
  VectorScale (pm->ps->velocity, forward, pm->ps->velocity);
 }
}
