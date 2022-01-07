
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int charSetShader; } ;
struct TYPE_3__ {int (* DrawStretchPic ) (int,int,int ,int,float,float,float,float,int ) ;} ;


 int SMALLCHAR_HEIGHT ;
 int SMALLCHAR_WIDTH ;
 TYPE_2__ cls ;
 TYPE_1__ re ;
 int stub1 (int,int,int ,int,float,float,float,float,int ) ;

void SCR_DrawSmallChar( int x, int y, int ch ) {
 int row, col;
 float frow, fcol;
 float size;

 ch &= 255;

 if ( ch == ' ' ) {
  return;
 }

 if ( y < -SMALLCHAR_HEIGHT ) {
  return;
 }

 row = ch>>4;
 col = ch&15;

 frow = row*0.0625;
 fcol = col*0.0625;
 size = 0.0625;

 re.DrawStretchPic( x, y, SMALLCHAR_WIDTH, SMALLCHAR_HEIGHT,
        fcol, frow,
        fcol + size, frow + size,
        cls.charSetShader );
}
