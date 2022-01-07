
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ type; char* string; } ;
typedef TYPE_1__ token_t ;
struct TYPE_18__ {int token; int defines; int definehash; scalar_t__ skip; } ;
typedef TYPE_2__ source_t ;
typedef int define_t ;


 int BuiltinFunction (TYPE_2__*) ;
 int Com_Memcpy (int *,TYPE_1__*,int) ;
 scalar_t__ MAX_TOKEN ;
 int PC_ExpandDefineIntoSource (TYPE_2__*,TYPE_1__*,int *) ;
 int * PC_FindDefine (int ,char*) ;
 int * PC_FindHashedDefine (int ,char*) ;
 int PC_ReadDirective (TYPE_2__*) ;
 int PC_ReadDollarDirective (TYPE_2__*) ;
 int PC_ReadSourceToken (TYPE_2__*,TYPE_1__*) ;
 int PC_UnreadToken (TYPE_2__*,TYPE_1__*) ;
 int QuakeCMacro (TYPE_2__*) ;
 int SourceError (TYPE_2__*,char*,scalar_t__) ;
 scalar_t__ TT_NAME ;
 scalar_t__ TT_PUNCTUATION ;
 scalar_t__ TT_STRING ;
 int qfalse ;
 int qtrue ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

int PC_ReadToken(source_t *source, token_t *token)
{
 define_t *define;

 while(1)
 {
  if (!PC_ReadSourceToken(source, token)) return qfalse;

  if (token->type == TT_PUNCTUATION && *token->string == '#')
  {



   {

    if (!PC_ReadDirective(source)) return qfalse;
    continue;
   }
  }
  if (token->type == TT_PUNCTUATION && *token->string == '$')
  {



   {

    if (!PC_ReadDollarDirective(source)) return qfalse;
    continue;
   }
  }

  if (token->type == TT_STRING)
  {
   token_t newtoken;
   if (PC_ReadToken(source, &newtoken))
   {
    if (newtoken.type == TT_STRING)
    {
     token->string[strlen(token->string)-1] = '\0';
     if (strlen(token->string) + strlen(newtoken.string+1) + 1 >= MAX_TOKEN)
     {
      SourceError(source, "string longer than MAX_TOKEN %d\n", MAX_TOKEN);
      return qfalse;
     }
     strcat(token->string, newtoken.string+1);
    }
    else
    {
     PC_UnreadToken(source, &newtoken);
    }
   }
  }

  if (source->skip) continue;

  if (token->type == TT_NAME)
  {




   define = PC_FindDefine(source->defines, token->string);


   if (define)
   {

    if (!PC_ExpandDefineIntoSource(source, token, define)) return qfalse;
    continue;
   }
  }

  Com_Memcpy(&source->token, token, sizeof(token_t));

  return qtrue;
 }
}
