
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* text; } ;


 int COLOR_WHITE ;
 int CON_TEXTSIZE ;
 int ColorIndex (int ) ;
 int Con_Bottom () ;
 TYPE_1__ con ;

void Con_Clear_f (void) {
 int i;

 for ( i = 0 ; i < CON_TEXTSIZE ; i++ ) {
  con.text[i] = (ColorIndex(COLOR_WHITE)<<8) | ' ';
 }

 Con_Bottom();
}
