
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



void GrowGroup_r( int patchNum, int patchCount, const byte *bordering, byte *group ) {
 int i;
 const byte *row;

 if ( group[patchNum] ) {
  return;
 }
 group[patchNum] = 1;
 row = bordering + patchNum * patchCount;
 for ( i = 0 ; i < patchCount ; i++ ) {
  if ( row[i] ) {
   GrowGroup_r( i, patchCount, bordering, group );
  }
 }
}
