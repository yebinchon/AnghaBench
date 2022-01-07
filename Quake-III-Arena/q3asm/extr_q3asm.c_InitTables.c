
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int HashString (int ) ;
 int NUM_SOURCE_OPS ;
 int * opcodesHash ;
 TYPE_1__* sourceOps ;

void InitTables( void ) {
 int i;

 for ( i = 0 ; i < NUM_SOURCE_OPS ; i++ ) {
  opcodesHash[i] = HashString( sourceOps[i].name );
 }
}
