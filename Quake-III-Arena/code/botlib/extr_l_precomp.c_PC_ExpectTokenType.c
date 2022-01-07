
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int subtype; int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;


 int MAX_TOKEN ;
 int PC_ReadToken (int *,TYPE_1__*) ;
 int SourceError (int *,char*,...) ;
 int TT_BINARY ;
 int TT_DECIMAL ;
 int TT_FLOAT ;
 int TT_HEX ;
 int TT_INTEGER ;
 int TT_LITERAL ;
 int TT_LONG ;
 int TT_NAME ;
 int TT_NUMBER ;
 int TT_OCTAL ;
 int TT_PUNCTUATION ;
 int TT_STRING ;
 int TT_UNSIGNED ;
 int qfalse ;
 int qtrue ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

int PC_ExpectTokenType(source_t *source, int type, int subtype, token_t *token)
{
 char str[MAX_TOKEN];

 if (!PC_ReadToken(source, token))
 {
  SourceError(source, "couldn't read expected token");
  return qfalse;
 }

 if (token->type != type)
 {
  strcpy(str, "");
  if (type == TT_STRING) strcpy(str, "string");
  if (type == TT_LITERAL) strcpy(str, "literal");
  if (type == TT_NUMBER) strcpy(str, "number");
  if (type == TT_NAME) strcpy(str, "name");
  if (type == TT_PUNCTUATION) strcpy(str, "punctuation");
  SourceError(source, "expected a %s, found %s", str, token->string);
  return qfalse;
 }
 if (token->type == TT_NUMBER)
 {
  if ((token->subtype & subtype) != subtype)
  {
   if (subtype & TT_DECIMAL) strcpy(str, "decimal");
   if (subtype & TT_HEX) strcpy(str, "hex");
   if (subtype & TT_OCTAL) strcpy(str, "octal");
   if (subtype & TT_BINARY) strcpy(str, "binary");
   if (subtype & TT_LONG) strcat(str, " long");
   if (subtype & TT_UNSIGNED) strcat(str, " unsigned");
   if (subtype & TT_FLOAT) strcat(str, " float");
   if (subtype & TT_INTEGER) strcat(str, " integer");
   SourceError(source, "expected %s, found %s", str, token->string);
   return qfalse;
  }
 }
 else if (token->type == TT_PUNCTUATION)
 {
  if (token->subtype != subtype)
  {
   SourceError(source, "found %s", token->string);
   return qfalse;
  }
 }
 return qtrue;
}
