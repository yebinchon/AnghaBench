
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qhandle_t ;
struct TYPE_2__ {int (* DrawStretchPic ) (float,float,float,float,int ,int ,int,int,int ) ;} ;


 int SCR_AdjustFrom640 (float*,float*,float*,float*) ;
 TYPE_1__ re ;
 int stub1 (float,float,float,float,int ,int ,int,int,int ) ;

void SCR_DrawPic( float x, float y, float width, float height, qhandle_t hShader ) {
 SCR_AdjustFrom640( &x, &y, &width, &height );
 re.DrawStretchPic( x, y, width, height, 0, 0, 1, 1, hShader );
}
