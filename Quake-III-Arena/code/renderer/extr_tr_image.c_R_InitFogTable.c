
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float* fogTable; } ;


 int FOG_TABLE_SIZE ;
 float pow (float,float) ;
 TYPE_1__ tr ;

void R_InitFogTable( void ) {
 int i;
 float d;
 float exp;

 exp = 0.5;

 for ( i = 0 ; i < FOG_TABLE_SIZE ; i++ ) {
  d = pow ( (float)i/(FOG_TABLE_SIZE-1), exp );

  tr.fogTable[i] = d;
 }
}
