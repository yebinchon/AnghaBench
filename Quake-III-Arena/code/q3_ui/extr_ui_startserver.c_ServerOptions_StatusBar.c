
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;


 int UI_CENTER ;
 int UI_DrawString (int,int,char*,int,int ) ;
 int UI_SMALLFONT ;
 int colorWhite ;

__attribute__((used)) static void ServerOptions_StatusBar( void* ptr ) {
 switch( ((menucommon_s*)ptr)->id ) {
 default:
  UI_DrawString( 320, 440, "0 = NO LIMIT", UI_CENTER|UI_SMALLFONT, colorWhite );
  break;
 }
}
