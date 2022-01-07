
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {size_t curvalue; } ;
struct TYPE_8__ {int curvalue; } ;
struct TYPE_6__ {int buffer; } ;
struct TYPE_7__ {TYPE_1__ field; } ;
struct TYPE_10__ {TYPE_4__ effects; TYPE_3__ handicap; TYPE_2__ name; } ;


 TYPE_5__ s_playersettings ;
 int trap_Cvar_Set (char*,int ) ;
 int trap_Cvar_SetValue (char*,int) ;
 int* uitogamecode ;

__attribute__((used)) static void PlayerSettings_SaveChanges( void ) {

 trap_Cvar_Set( "name", s_playersettings.name.field.buffer );


 trap_Cvar_SetValue( "handicap", 100 - s_playersettings.handicap.curvalue * 5 );


 trap_Cvar_SetValue( "color1", uitogamecode[s_playersettings.effects.curvalue] );
}
