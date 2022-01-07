
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int charSetShader; } ;
struct TYPE_3__ {int (* DrawStretchPic ) (float,float,float,float,float,float,float,float,int ) ;} ;


 int SCR_AdjustFrom640 (float*,float*,float*,float*) ;
 TYPE_2__ cls ;
 TYPE_1__ re ;
 int stub1 (float,float,float,float,float,float,float,float,int ) ;

__attribute__((used)) static void SCR_DrawChar( int x, int y, float size, int ch ) {
 int row, col;
 float frow, fcol;
 float ax, ay, aw, ah;

 ch &= 255;

 if ( ch == ' ' ) {
  return;
 }

 if ( y < -size ) {
  return;
 }

 ax = x;
 ay = y;
 aw = size;
 ah = size;
 SCR_AdjustFrom640( &ax, &ay, &aw, &ah );

 row = ch>>4;
 col = ch&15;

 frow = row*0.0625;
 fcol = col*0.0625;
 size = 0.0625;

 re.DrawStretchPic( ax, ay, aw, ah,
        fcol, frow,
        fcol + size, frow + size,
        cls.charSetShader );
}
