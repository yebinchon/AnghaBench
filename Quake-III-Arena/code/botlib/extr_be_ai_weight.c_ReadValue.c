
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; float floatvalue; int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;


 int PC_ExpectAnyToken (int *,TYPE_1__*) ;
 int PC_ExpectTokenType (int *,scalar_t__,int ,TYPE_1__*) ;
 int SourceError (int *,char*,int ) ;
 int SourceWarning (int *,char*) ;
 scalar_t__ TT_NUMBER ;
 int qfalse ;
 int qtrue ;
 int strcmp (int ,char*) ;

int ReadValue(source_t *source, float *value)
{
 token_t token;

 if (!PC_ExpectAnyToken(source, &token)) return qfalse;
 if (!strcmp(token.string, "-"))
 {
  SourceWarning(source, "negative value set to zero\n");
  if (!PC_ExpectTokenType(source, TT_NUMBER, 0, &token)) return qfalse;
 }
 if (token.type != TT_NUMBER)
 {
  SourceError(source, "invalid return value %s\n", token.string);
  return qfalse;
 }
 *value = token.floatvalue;
 return qtrue;
}
