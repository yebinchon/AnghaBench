
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ modified; } ;


 int FS_Restart (int) ;
 int fs_checksumFeed ;
 TYPE_1__* fs_gamedirvar ;
 int qfalse ;
 int qtrue ;

qboolean FS_ConditionalRestart( int checksumFeed ) {
 if( fs_gamedirvar->modified || checksumFeed != fs_checksumFeed ) {
  FS_Restart( checksumFeed );
  return qtrue;
 }
 return qfalse;
}
