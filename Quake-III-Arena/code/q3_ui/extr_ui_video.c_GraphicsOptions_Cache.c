
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRAPHICSOPTIONS_ACCEPT0 ;
 int GRAPHICSOPTIONS_ACCEPT1 ;
 int GRAPHICSOPTIONS_BACK0 ;
 int GRAPHICSOPTIONS_BACK1 ;
 int GRAPHICSOPTIONS_FRAMEL ;
 int GRAPHICSOPTIONS_FRAMER ;
 int trap_R_RegisterShaderNoMip (int ) ;

void GraphicsOptions_Cache( void ) {
 trap_R_RegisterShaderNoMip( GRAPHICSOPTIONS_FRAMEL );
 trap_R_RegisterShaderNoMip( GRAPHICSOPTIONS_FRAMER );
 trap_R_RegisterShaderNoMip( GRAPHICSOPTIONS_BACK0 );
 trap_R_RegisterShaderNoMip( GRAPHICSOPTIONS_BACK1 );
 trap_R_RegisterShaderNoMip( GRAPHICSOPTIONS_ACCEPT0 );
 trap_R_RegisterShaderNoMip( GRAPHICSOPTIONS_ACCEPT1 );
}
