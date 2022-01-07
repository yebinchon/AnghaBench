
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;


 int _printf (char*,...) ;

void PrintCtrl( vec3_t ctrl[9] ) {
 int i, j;

 for ( i = 0 ; i < 3 ; i++ ) {
  for ( j = 0 ; j < 3 ; j++ ) {
   _printf("(%5.2f %5.2f %5.2f) ", ctrl[i*3+j][0], ctrl[i*3+j][1], ctrl[i*3+j][2] );
  }
  _printf("\n");
 }
}
