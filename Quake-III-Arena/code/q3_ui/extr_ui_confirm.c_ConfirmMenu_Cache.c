
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ART_CONFIRM_FRAME ;
 int trap_R_RegisterShaderNoMip (int ) ;

void ConfirmMenu_Cache( void ) {
 trap_R_RegisterShaderNoMip( ART_CONFIRM_FRAME );
}
