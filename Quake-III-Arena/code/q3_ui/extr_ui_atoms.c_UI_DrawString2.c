
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * vec4_t ;
typedef int tempcolor ;
struct TYPE_2__ {int scale; int bias; int charset; } ;


 size_t ColorIndex (char const) ;
 scalar_t__ Q_IsColorString (char const*) ;
 int * g_color_table ;
 int memcpy (int *,int ,int) ;
 int qfalse ;
 int trap_R_DrawStretchPic (float,float,float,float,float,float,float,float,int ) ;
 int trap_R_SetColor (int *) ;
 TYPE_1__ uis ;

__attribute__((used)) static void UI_DrawString2( int x, int y, const char* str, vec4_t color, int charw, int charh )
{
 const char* s;
 char ch;
 int forceColor = qfalse;
 vec4_t tempcolor;
 float ax;
 float ay;
 float aw;
 float ah;
 float frow;
 float fcol;

 if (y < -charh)

  return;


 trap_R_SetColor( color );

 ax = x * uis.scale + uis.bias;
 ay = y * uis.scale;
 aw = charw * uis.scale;
 ah = charh * uis.scale;

 s = str;
 while ( *s )
 {
  if ( Q_IsColorString( s ) )
  {
   if ( !forceColor )
   {
    memcpy( tempcolor, g_color_table[ColorIndex(s[1])], sizeof( tempcolor ) );
    tempcolor[3] = color[3];
    trap_R_SetColor( tempcolor );
   }
   s += 2;
   continue;
  }

  ch = *s & 255;
  if (ch != ' ')
  {
   frow = (ch>>4)*0.0625;
   fcol = (ch&15)*0.0625;
   trap_R_DrawStretchPic( ax, ay, aw, ah, fcol, frow, fcol + 0.0625, frow + 0.0625, uis.charset );
  }

  ax += aw;
  s++;
 }

 trap_R_SetColor( ((void*)0) );
}
