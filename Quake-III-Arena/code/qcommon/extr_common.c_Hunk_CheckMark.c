
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ mark; } ;
struct TYPE_3__ {scalar_t__ mark; } ;


 TYPE_2__ hunk_high ;
 TYPE_1__ hunk_low ;
 int qfalse ;
 int qtrue ;

qboolean Hunk_CheckMark( void ) {
 if( hunk_low.mark || hunk_high.mark ) {
  return qtrue;
 }
 return qfalse;
}
