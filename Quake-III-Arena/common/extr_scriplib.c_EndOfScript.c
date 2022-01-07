
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {char* filename; int line; int buffer; } ;


 int Error (char*,int ) ;
 int GetToken (int ) ;
 int endofscript ;
 int free (int ) ;
 int printf (char*,char*) ;
 int qfalse ;
 int qtrue ;
 TYPE_1__* script ;
 int scriptline ;
 TYPE_1__* scriptstack ;
 int strcmp (char*,char*) ;

qboolean EndOfScript (qboolean crossline)
{
 if (!crossline)
  Error ("Line %i is incomplete\n",scriptline);

 if (!strcmp (script->filename, "memory buffer"))
 {
  endofscript = qtrue;
  return qfalse;
 }

 free (script->buffer);
 if (script == scriptstack+1)
 {
  endofscript = qtrue;
  return qfalse;
 }
 script--;
 scriptline = script->line;
 printf ("returning to %s\n", script->filename);
 return GetToken (crossline);
}
