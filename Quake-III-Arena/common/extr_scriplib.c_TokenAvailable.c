
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int line; } ;


 int GetToken (int ) ;
 int UnGetToken () ;
 int qfalse ;
 int qtrue ;
 TYPE_1__* script ;

qboolean TokenAvailable (void) {
 int oldLine;
 qboolean r;

 oldLine = script->line;
 r = GetToken( qtrue );
 if ( !r ) {
  return qfalse;
 }
 UnGetToken();
 if ( oldLine == script->line ) {
  return qtrue;
 }
 return qfalse;
}
