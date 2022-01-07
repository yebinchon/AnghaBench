
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pendingLegsAnim; } ;
typedef TYPE_1__ playerInfo_t ;


 int UI_ForceLegsAnim (TYPE_1__*,int) ;

__attribute__((used)) static void UI_SetLegsAnim( playerInfo_t *pi, int anim ) {
 if ( pi->pendingLegsAnim ) {
  anim = pi->pendingLegsAnim;
  pi->pendingLegsAnim = 0;
 }
 UI_ForceLegsAnim( pi, anim );
}
