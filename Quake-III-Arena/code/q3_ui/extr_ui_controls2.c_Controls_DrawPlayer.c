
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; int x; } ;
struct TYPE_6__ {int height; int width; TYPE_1__ generic; } ;
typedef TYPE_2__ menubitmap_s ;
typedef int buf ;
struct TYPE_8__ {int playerinfo; int playerModel; } ;
struct TYPE_7__ {int realtime; } ;


 int ANIM_IDLE ;
 int Controls_UpdateModel (int ) ;
 int MAX_QPATH ;
 int UI_DrawPlayer (int ,int ,int ,int ,int *,int) ;
 int UI_PlayerInfo_SetModel (int *,char*) ;
 TYPE_4__ s_controls ;
 scalar_t__ strcmp (char*,int ) ;
 int strcpy (int ,char*) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 TYPE_3__ uis ;

__attribute__((used)) static void Controls_DrawPlayer( void *self ) {
 menubitmap_s *b;
 char buf[MAX_QPATH];

 trap_Cvar_VariableStringBuffer( "model", buf, sizeof( buf ) );
 if ( strcmp( buf, s_controls.playerModel ) != 0 ) {
  UI_PlayerInfo_SetModel( &s_controls.playerinfo, buf );
  strcpy( s_controls.playerModel, buf );
  Controls_UpdateModel( ANIM_IDLE );
 }

 b = (menubitmap_s*) self;
 UI_DrawPlayer( b->generic.x, b->generic.y, b->width, b->height, &s_controls.playerinfo, uis.realtime/2 );
}
