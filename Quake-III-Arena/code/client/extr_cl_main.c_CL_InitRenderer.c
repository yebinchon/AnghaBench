
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vidWidth; } ;
struct TYPE_8__ {TYPE_1__ glconfig; int consoleShader; int whiteShader; int charSetShader; } ;
struct TYPE_7__ {int widthInChars; } ;
struct TYPE_6__ {int (* RegisterShader ) (char*) ;int (* BeginRegistration ) (TYPE_1__*) ;} ;


 int SMALLCHAR_WIDTH ;
 TYPE_4__ cls ;
 TYPE_3__ g_consoleField ;
 int g_console_field_width ;
 TYPE_2__ re ;
 int stub1 (TYPE_1__*) ;
 int stub2 (char*) ;
 int stub3 (char*) ;
 int stub4 (char*) ;

void CL_InitRenderer( void ) {

 re.BeginRegistration( &cls.glconfig );


 cls.charSetShader = re.RegisterShader( "gfx/2d/bigchars" );
 cls.whiteShader = re.RegisterShader( "white" );
 cls.consoleShader = re.RegisterShader( "console" );
 g_console_field_width = cls.glconfig.vidWidth / SMALLCHAR_WIDTH - 2;
 g_consoleField.widthInChars = g_console_field_width;
}
