
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fileHandle_t ;
struct TYPE_3__ {int flags; scalar_t__ string; int name; scalar_t__ latchedString; struct TYPE_3__* next; } ;
typedef TYPE_1__ cvar_t ;
typedef int buffer ;


 int CVAR_ARCHIVE ;
 int Com_sprintf (char*,int,char*,int ,scalar_t__) ;
 int FS_Printf (int ,char*,char*) ;
 scalar_t__ Q_stricmp (int ,char*) ;
 TYPE_1__* cvar_vars ;

void Cvar_WriteVariables( fileHandle_t f ) {
 cvar_t *var;
 char buffer[1024];

 for (var = cvar_vars ; var ; var = var->next) {
  if( Q_stricmp( var->name, "cl_cdkey" ) == 0 ) {
   continue;
  }
  if( var->flags & CVAR_ARCHIVE ) {

   if ( var->latchedString ) {
    Com_sprintf (buffer, sizeof(buffer), "seta %s \"%s\"\n", var->name, var->latchedString);
   } else {
    Com_sprintf (buffer, sizeof(buffer), "seta %s \"%s\"\n", var->name, var->string);
   }
   FS_Printf (f, "%s", buffer);
  }
 }
}
