
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_DrawFlagModel (float,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ ICON_SIZE ;
 int qfalse ;

__attribute__((used)) static void CG_DrawStatusBarFlag( float x, int team ) {
 CG_DrawFlagModel( x, 480 - ICON_SIZE, ICON_SIZE, ICON_SIZE, team, qfalse );
}
