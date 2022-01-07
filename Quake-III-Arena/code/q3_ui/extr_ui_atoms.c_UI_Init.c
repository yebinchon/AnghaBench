
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {double vidHeight; int vidWidth; } ;
struct TYPE_3__ {double scale; double bias; scalar_t__ menusp; int * activemenu; TYPE_2__ glconfig; } ;


 int Menu_Cache () ;
 int UI_InitGameinfo () ;
 int UI_RegisterCvars () ;
 int trap_GetGlconfig (TYPE_2__*) ;
 TYPE_1__ uis ;

void UI_Init( void ) {
 UI_RegisterCvars();

 UI_InitGameinfo();


 trap_GetGlconfig( &uis.glconfig );


 uis.scale = uis.glconfig.vidHeight * (1.0/480.0);
 if ( uis.glconfig.vidWidth * 480 > uis.glconfig.vidHeight * 640 ) {

  uis.bias = 0.5 * ( uis.glconfig.vidWidth - ( uis.glconfig.vidHeight * (640.0/480.0) ) );
 }
 else {

  uis.bias = 0;
 }


 Menu_Cache();

 uis.activemenu = ((void*)0);
 uis.menusp = 0;
}
