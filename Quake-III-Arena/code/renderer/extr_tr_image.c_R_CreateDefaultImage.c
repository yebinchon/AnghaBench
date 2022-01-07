
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int data ;
typedef int byte ;
struct TYPE_2__ {int defaultImage; } ;


 int Com_Memset (int***,int,int) ;
 int DEFAULT_SIZE ;
 int GL_REPEAT ;
 int R_CreateImage (char*,int*,int,int,int ,int ,int ) ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ tr ;

__attribute__((used)) static void R_CreateDefaultImage( void ) {
 int x;
 byte data[DEFAULT_SIZE][DEFAULT_SIZE][4];


 Com_Memset( data, 32, sizeof( data ) );
 for ( x = 0 ; x < DEFAULT_SIZE ; x++ ) {
  data[0][x][0] =
  data[0][x][1] =
  data[0][x][2] =
  data[0][x][3] = 255;

  data[x][0][0] =
  data[x][0][1] =
  data[x][0][2] =
  data[x][0][3] = 255;

  data[DEFAULT_SIZE-1][x][0] =
  data[DEFAULT_SIZE-1][x][1] =
  data[DEFAULT_SIZE-1][x][2] =
  data[DEFAULT_SIZE-1][x][3] = 255;

  data[x][DEFAULT_SIZE-1][0] =
  data[x][DEFAULT_SIZE-1][1] =
  data[x][DEFAULT_SIZE-1][2] =
  data[x][DEFAULT_SIZE-1][3] = 255;
 }
 tr.defaultImage = R_CreateImage("*default", (byte *)data, DEFAULT_SIZE, DEFAULT_SIZE, qtrue, qfalse, GL_REPEAT );
}
