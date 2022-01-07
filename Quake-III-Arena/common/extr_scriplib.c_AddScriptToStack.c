
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; int line; scalar_t__ buffer; scalar_t__ end_p; scalar_t__ script_p; } ;


 int Error (char*) ;
 int ExpandPath (char const*) ;
 int LoadFile (char*,void**) ;
 size_t MAX_INCLUDES ;
 int printf (char*,char*) ;
 TYPE_1__* script ;
 TYPE_1__* scriptstack ;
 int strcpy (char*,int ) ;

void AddScriptToStack( const char *filename ) {
 int size;

 script++;
 if (script == &scriptstack[MAX_INCLUDES])
  Error ("script file exceeded MAX_INCLUDES");
 strcpy (script->filename, ExpandPath (filename) );

 size = LoadFile (script->filename, (void **)&script->buffer);

 printf ("entering %s\n", script->filename);

 script->line = 1;

 script->script_p = script->buffer;
 script->end_p = script->buffer + size;
}
