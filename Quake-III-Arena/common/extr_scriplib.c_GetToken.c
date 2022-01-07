
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* qboolean ;
struct TYPE_2__ {int* script_p; int* end_p; int line; } ;


 int AddScriptToStack (char*) ;
 void* EndOfScript (void*) ;
 int Error (char*,scalar_t__) ;
 size_t MAXTOKEN ;
 void* qfalse ;
 void* qtrue ;
 TYPE_1__* script ;
 scalar_t__ scriptline ;
 int strcmp (char*,char*) ;
 char* token ;
 void* tokenready ;

qboolean GetToken (qboolean crossline)
{
 char *token_p;

 if (tokenready)
 {
  tokenready = qfalse;
  return qtrue;
 }

 if (script->script_p >= script->end_p)
  return EndOfScript (crossline);




skipspace:
 while (*script->script_p <= 32)
 {
  if (script->script_p >= script->end_p)
   return EndOfScript (crossline);
  if (*script->script_p++ == '\n')
  {
   if (!crossline)
    Error ("Line %i is incomplete\n",scriptline);
   scriptline = script->line++;
  }
 }

 if (script->script_p >= script->end_p)
  return EndOfScript (crossline);


 if (*script->script_p == ';' || *script->script_p == '#'
  || ( script->script_p[0] == '/' && script->script_p[1] == '/') )
 {
  if (!crossline)
   Error ("Line %i is incomplete\n",scriptline);
  while (*script->script_p++ != '\n')
   if (script->script_p >= script->end_p)
    return EndOfScript (crossline);
  scriptline = script->line++;
  goto skipspace;
 }


 if (script->script_p[0] == '/' && script->script_p[1] == '*')
 {
  if (!crossline)
   Error ("Line %i is incomplete\n",scriptline);
  script->script_p+=2;
  while (script->script_p[0] != '*' && script->script_p[1] != '/')
  {
   if ( *script->script_p == '\n' ) {
    scriptline = script->line++;
   }
   script->script_p++;
   if (script->script_p >= script->end_p)
    return EndOfScript (crossline);
  }
  script->script_p += 2;
  goto skipspace;
 }




 token_p = token;

 if (*script->script_p == '"')
 {

  script->script_p++;
  while (*script->script_p != '"')
  {
   *token_p++ = *script->script_p++;
   if (script->script_p == script->end_p)
    break;
   if (token_p == &token[MAXTOKEN])
    Error ("Token too large on line %i\n",scriptline);
  }
  script->script_p++;
 }
 else
 while ( *script->script_p > 32 && *script->script_p != ';')
 {
  *token_p++ = *script->script_p++;
  if (script->script_p == script->end_p)
   break;
  if (token_p == &token[MAXTOKEN])
   Error ("Token too large on line %i\n",scriptline);
 }

 *token_p = 0;

 if (!strcmp (token, "$include"))
 {
  GetToken (qfalse);
  AddScriptToStack (token);
  return GetToken (crossline);
 }

 return qtrue;
}
