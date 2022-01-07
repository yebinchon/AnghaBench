
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__* st; scalar_t__* xyz; } ;
typedef TYPE_1__ drawVert_t ;


 scalar_t__ floor (scalar_t__) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

qboolean CompareVert( drawVert_t *v1, drawVert_t *v2, qboolean checkst ) {
 int i;

 for( i = 0; i < 3; i++ ) {
  if ( floor( v1->xyz[ i ] + 0.1 ) != floor( v2->xyz[ i ] + 0.1 ) ) {
   return qfalse;
  }
  if ( checkst && ( ( v1->st[ 0 ] != v2->st[ 0 ] ) || ( v1->st[ 1 ] != v2->st[ 1 ] ) ) ) {
   return qfalse;
  }
 }

 return qtrue;
}
