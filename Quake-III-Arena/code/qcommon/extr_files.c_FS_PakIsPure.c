
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {scalar_t__ checksum; } ;
typedef TYPE_1__ pack_t ;


 int fs_numServerPaks ;
 scalar_t__* fs_serverPaks ;
 int qfalse ;
 int qtrue ;

qboolean FS_PakIsPure( pack_t *pack ) {
 int i;

 if ( fs_numServerPaks ) {
  for ( i = 0 ; i < fs_numServerPaks ; i++ ) {



   if ( pack->checksum == fs_serverPaks[i] ) {
    return qtrue;
   }
  }
  return qfalse;
 }
 return qtrue;
}
