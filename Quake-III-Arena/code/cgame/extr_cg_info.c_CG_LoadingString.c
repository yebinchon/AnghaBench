
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int infoScreenText; } ;


 int Q_strncpyz (int ,char const*,int) ;
 TYPE_1__ cg ;
 int trap_UpdateScreen () ;

void CG_LoadingString( const char *s ) {
 Q_strncpyz( cg.infoScreenText, s, sizeof( cg.infoScreenText ) );

 trap_UpdateScreen();
}
