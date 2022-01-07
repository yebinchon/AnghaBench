
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ linescrossed; scalar_t__ type; int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;
struct TYPE_6__ {int (* func ) (int *) ;scalar_t__ name; } ;


 int PC_ReadSourceToken (int *,TYPE_1__*) ;
 int PC_UnreadSourceToken (int *,TYPE_1__*) ;
 int SourceError (int *,char*,...) ;
 scalar_t__ TT_NAME ;
 TYPE_2__* directives ;
 int qfalse ;
 int strcmp (scalar_t__,int ) ;
 int stub1 (int *) ;

int PC_ReadDirective(source_t *source)
{
 token_t token;
 int i;


 if (!PC_ReadSourceToken(source, &token))
 {
  SourceError(source, "found # without name");
  return qfalse;
 }

 if (token.linescrossed > 0)
 {
  PC_UnreadSourceToken(source, &token);
  SourceError(source, "found # at end of line");
  return qfalse;
 }

 if (token.type == TT_NAME)
 {

  for (i = 0; directives[i].name; i++)
  {
   if (!strcmp(directives[i].name, token.string))
   {
    return directives[i].func(source);
   }
  }
 }
 SourceError(source, "unknown precompiler directive %s", token.string);
 return qfalse;
}
