
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ POINT ;


 int GetCursorPos (TYPE_1__*) ;
 int SetCursorPos (int,int) ;
 int window_center_x ;
 int window_center_y ;

void IN_Win32Mouse( int *mx, int *my ) {
 POINT current_pos;


 GetCursorPos (&current_pos);


 SetCursorPos (window_center_x, window_center_y);

 *mx = current_pos.x - window_center_x;
 *my = current_pos.y - window_center_y;
}
