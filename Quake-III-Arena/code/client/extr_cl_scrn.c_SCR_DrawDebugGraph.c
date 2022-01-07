
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {float integer; } ;
struct TYPE_12__ {float integer; } ;
struct TYPE_8__ {int vidWidth; int vidHeight; } ;
struct TYPE_11__ {int whiteShader; TYPE_1__ glconfig; } ;
struct TYPE_10__ {int (* DrawStretchPic ) (int,int,int,int,int ,int ,int ,int ,int ) ;int (* SetColor ) (int *) ;} ;
struct TYPE_9__ {float value; int color; } ;


 TYPE_7__* cl_graphheight ;
 TYPE_6__* cl_graphscale ;
 TYPE_5__* cl_graphshift ;
 TYPE_4__ cls ;
 int current ;
 int ** g_color_table ;
 TYPE_3__ re ;
 int stub1 (int *) ;
 int stub2 (int,int,int,int,int ,int ,int ,int ,int ) ;
 int stub3 (int *) ;
 int stub4 (int,int,int,int,int ,int ,int ,int ,int ) ;
 TYPE_2__* values ;

void SCR_DrawDebugGraph (void)
{
 int a, x, y, w, i, h;
 float v;
 int color;




 w = cls.glconfig.vidWidth;
 x = 0;
 y = cls.glconfig.vidHeight;
 re.SetColor( g_color_table[0] );
 re.DrawStretchPic(x, y - cl_graphheight->integer,
  w, cl_graphheight->integer, 0, 0, 0, 0, cls.whiteShader );
 re.SetColor( ((void*)0) );

 for (a=0 ; a<w ; a++)
 {
  i = (current-1-a+1024) & 1023;
  v = values[i].value;
  color = values[i].color;
  v = v * cl_graphscale->integer + cl_graphshift->integer;

  if (v < 0)
   v += cl_graphheight->integer * (1+(int)(-v / cl_graphheight->integer));
  h = (int)v % cl_graphheight->integer;
  re.DrawStretchPic( x+w-1-a, y - h, 1, h, 0, 0, 0, 0, cls.whiteShader );
 }
}
