
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* mouseDx; size_t mouseIndex; int* mouseDy; } ;
struct TYPE_3__ {int keyCatchers; } ;


 int CG_MOUSE_EVENT ;
 int KEYCATCH_CGAME ;
 int KEYCATCH_UI ;
 int UI_MOUSE_EVENT ;
 int VM_Call (int ,int ,int,int) ;
 int cgvm ;
 TYPE_2__ cl ;
 TYPE_1__ cls ;
 int uivm ;

void CL_MouseEvent( int dx, int dy, int time ) {
 if ( cls.keyCatchers & KEYCATCH_UI ) {
  VM_Call( uivm, UI_MOUSE_EVENT, dx, dy );
 } else if (cls.keyCatchers & KEYCATCH_CGAME) {
  VM_Call (cgvm, CG_MOUSE_EVENT, dx, dy);
 } else {
  cl.mouseDx[cl.mouseIndex] += dx;
  cl.mouseDy[cl.mouseIndex] += dy;
 }
}
