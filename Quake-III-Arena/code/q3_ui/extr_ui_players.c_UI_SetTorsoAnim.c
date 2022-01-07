
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pendingTorsoAnim; } ;
typedef TYPE_1__ playerInfo_t ;


 int UI_ForceTorsoAnim (TYPE_1__*,int) ;

__attribute__((used)) static void UI_SetTorsoAnim( playerInfo_t *pi, int anim ) {
 if ( pi->pendingTorsoAnim ) {
  anim = pi->pendingTorsoAnim;
  pi->pendingTorsoAnim = 0;
 }

 UI_ForceTorsoAnim( pi, anim );
}
