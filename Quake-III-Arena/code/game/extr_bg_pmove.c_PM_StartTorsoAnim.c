
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ps; } ;
struct TYPE_3__ {scalar_t__ pm_type; int torsoAnim; } ;


 int ANIM_TOGGLEBIT ;
 scalar_t__ PM_DEAD ;
 TYPE_2__* pm ;

__attribute__((used)) static void PM_StartTorsoAnim( int anim ) {
 if ( pm->ps->pm_type >= PM_DEAD ) {
  return;
 }
 pm->ps->torsoAnim = ( ( pm->ps->torsoAnim & ANIM_TOGGLEBIT ) ^ ANIM_TOGGLEBIT )
  | anim;
}
