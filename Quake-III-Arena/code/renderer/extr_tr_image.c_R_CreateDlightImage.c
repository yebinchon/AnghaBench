
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int dlightImage; } ;


 int DLIGHT_SIZE ;
 int GL_CLAMP ;
 int R_CreateImage (char*,int*,int,int,int ,int ,int ) ;
 int qfalse ;
 TYPE_1__ tr ;

__attribute__((used)) static void R_CreateDlightImage( void ) {
 int x,y;
 byte data[DLIGHT_SIZE][DLIGHT_SIZE][4];
 int b;


 for (x=0 ; x<DLIGHT_SIZE ; x++) {
  for (y=0 ; y<DLIGHT_SIZE ; y++) {
   float d;

   d = ( DLIGHT_SIZE/2 - 0.5f - x ) * ( DLIGHT_SIZE/2 - 0.5f - x ) +
    ( DLIGHT_SIZE/2 - 0.5f - y ) * ( DLIGHT_SIZE/2 - 0.5f - y );
   b = 4000 / d;
   if (b > 255) {
    b = 255;
   } else if ( b < 75 ) {
    b = 0;
   }
   data[y][x][0] =
   data[y][x][1] =
   data[y][x][2] = b;
   data[y][x][3] = 255;
  }
 }
 tr.dlightImage = R_CreateImage("*dlight", (byte *)data, DLIGHT_SIZE, DLIGHT_SIZE, qfalse, qfalse, GL_CLAMP );
}
