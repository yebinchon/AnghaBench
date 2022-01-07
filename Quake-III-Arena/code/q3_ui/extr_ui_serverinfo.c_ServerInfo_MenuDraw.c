
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numlines; char* info; int menu; } ;


 int Info_NextPair (char const**,char*,char*) ;
 int MAX_INFO_KEY ;
 int MAX_INFO_VALUE ;
 int Menu_Draw (int *) ;
 int Q_strcat (char*,int,char*) ;
 int SCREEN_HEIGHT ;
 double SCREEN_WIDTH ;
 int SMALLCHAR_HEIGHT ;
 int UI_DrawString (double,int,char*,int,int ) ;
 int UI_LEFT ;
 int UI_RIGHT ;
 int UI_SMALLFONT ;
 int color_red ;
 TYPE_1__ s_serverinfo ;
 int text_color_normal ;

__attribute__((used)) static void ServerInfo_MenuDraw( void )
{
 const char *s;
 char key[MAX_INFO_KEY];
 char value[MAX_INFO_VALUE];
 int y;

 y = SCREEN_HEIGHT/2 - s_serverinfo.numlines*(SMALLCHAR_HEIGHT)/2 - 20;
 s = s_serverinfo.info;
 while ( s ) {
  Info_NextPair( &s, key, value );
  if ( !key[0] ) {
   break;
  }

  Q_strcat( key, MAX_INFO_KEY, ":" );

  UI_DrawString(SCREEN_WIDTH*0.50 - 8,y,key,UI_RIGHT|UI_SMALLFONT,color_red);
  UI_DrawString(SCREEN_WIDTH*0.50 + 8,y,value,UI_LEFT|UI_SMALLFONT,text_color_normal);

  y += SMALLCHAR_HEIGHT;
 }

 Menu_Draw( &s_serverinfo.menu );
}
