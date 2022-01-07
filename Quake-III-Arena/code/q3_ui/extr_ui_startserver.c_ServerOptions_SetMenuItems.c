
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_29__ {int buffer; } ;
struct TYPE_30__ {TYPE_8__ field; } ;
struct TYPE_28__ {int curvalue; } ;
struct TYPE_26__ {char* buffer; } ;
struct TYPE_27__ {TYPE_5__ field; } ;
struct TYPE_24__ {char* buffer; } ;
struct TYPE_25__ {TYPE_3__ field; } ;
struct TYPE_22__ {char* buffer; } ;
struct TYPE_23__ {TYPE_1__ field; } ;
struct TYPE_17__ {char* name; } ;
struct TYPE_18__ {TYPE_11__ generic; } ;
struct TYPE_16__ {scalar_t__ curvalue; } ;
struct TYPE_21__ {int gametype; int mapnamebuffer; TYPE_12__ mappic; TYPE_10__ pure; TYPE_9__ hostname; TYPE_7__ friendlyfire; TYPE_6__ timelimit; TYPE_4__ flaglimit; TYPE_2__ fraglimit; } ;
struct TYPE_19__ {int string; } ;
struct TYPE_20__ {int* maplist; size_t currentmap; TYPE_13__ mapname; } ;


 scalar_t__ Com_Clamp (int ,int,int ) ;
 int Com_sprintf (char*,int,char*,int) ;




 int Q_strncpyz (int ,int ,int) ;
 int Q_strupr (int ) ;
 int ServerOptions_InitBotNames () ;
 int ServerOptions_InitPlayerItems () ;
 int ServerOptions_SetPlayerItems () ;
 int UI_Cvar_VariableString (char*) ;
 TYPE_15__ s_serveroptions ;
 TYPE_14__ s_startserver ;
 int strcpy (int ,int ) ;
 int trap_Cvar_VariableValue (char*) ;

__attribute__((used)) static void ServerOptions_SetMenuItems( void ) {
 static char picname[64];

 switch( s_serveroptions.gametype ) {
 case 130:
 default:
  Com_sprintf( s_serveroptions.fraglimit.field.buffer, 4, "%i", (int)Com_Clamp( 0, 999, trap_Cvar_VariableValue( "ui_ffa_fraglimit" ) ) );
  Com_sprintf( s_serveroptions.timelimit.field.buffer, 4, "%i", (int)Com_Clamp( 0, 999, trap_Cvar_VariableValue( "ui_ffa_timelimit" ) ) );
  break;

 case 128:
  Com_sprintf( s_serveroptions.fraglimit.field.buffer, 4, "%i", (int)Com_Clamp( 0, 999, trap_Cvar_VariableValue( "ui_tourney_fraglimit" ) ) );
  Com_sprintf( s_serveroptions.timelimit.field.buffer, 4, "%i", (int)Com_Clamp( 0, 999, trap_Cvar_VariableValue( "ui_tourney_timelimit" ) ) );
  break;

 case 129:
  Com_sprintf( s_serveroptions.fraglimit.field.buffer, 4, "%i", (int)Com_Clamp( 0, 999, trap_Cvar_VariableValue( "ui_team_fraglimit" ) ) );
  Com_sprintf( s_serveroptions.timelimit.field.buffer, 4, "%i", (int)Com_Clamp( 0, 999, trap_Cvar_VariableValue( "ui_team_timelimit" ) ) );
  s_serveroptions.friendlyfire.curvalue = (int)Com_Clamp( 0, 1, trap_Cvar_VariableValue( "ui_team_friendly" ) );
  break;

 case 131:
  Com_sprintf( s_serveroptions.flaglimit.field.buffer, 4, "%i", (int)Com_Clamp( 0, 100, trap_Cvar_VariableValue( "ui_ctf_capturelimit" ) ) );
  Com_sprintf( s_serveroptions.timelimit.field.buffer, 4, "%i", (int)Com_Clamp( 0, 999, trap_Cvar_VariableValue( "ui_ctf_timelimit" ) ) );
  s_serveroptions.friendlyfire.curvalue = (int)Com_Clamp( 0, 1, trap_Cvar_VariableValue( "ui_ctf_friendly" ) );
  break;
 }

 Q_strncpyz( s_serveroptions.hostname.field.buffer, UI_Cvar_VariableString( "sv_hostname" ), sizeof( s_serveroptions.hostname.field.buffer ) );
 s_serveroptions.pure.curvalue = Com_Clamp( 0, 1, trap_Cvar_VariableValue( "sv_pure" ) );


 Com_sprintf( picname, 64, "levelshots/%s", s_startserver.maplist[s_startserver.currentmap] );
 s_serveroptions.mappic.generic.name = picname;


 strcpy( s_serveroptions.mapnamebuffer, s_startserver.mapname.string );
 Q_strupr( s_serveroptions.mapnamebuffer );


 ServerOptions_InitPlayerItems();
 ServerOptions_SetPlayerItems();


 ServerOptions_InitBotNames();
 ServerOptions_SetPlayerItems();
}
