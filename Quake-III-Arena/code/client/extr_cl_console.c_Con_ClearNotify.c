
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* times; } ;


 int NUM_CON_TIMES ;
 TYPE_1__ con ;

void Con_ClearNotify( void ) {
 int i;

 for ( i = 0 ; i < NUM_CON_TIMES ; i++ ) {
  con.times[i] = 0;
 }
}
