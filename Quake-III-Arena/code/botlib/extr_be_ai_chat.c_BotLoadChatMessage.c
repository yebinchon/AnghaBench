
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; char* string; int subtype; char* intvalue; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;


 int ESCAPE_CHAR ;
 int MAX_MESSAGE_SIZE ;
 scalar_t__ PC_CheckTokenString (int *,char*) ;
 int PC_ExpectAnyToken (int *,TYPE_1__*) ;
 int PC_ExpectTokenString (int *,char*) ;
 int SourceError (int *,char*,...) ;
 int StripDoubleQuotes (char*) ;
 int TT_INTEGER ;
 scalar_t__ TT_NAME ;
 scalar_t__ TT_NUMBER ;
 scalar_t__ TT_STRING ;
 int qfalse ;
 int qtrue ;
 int sprintf (char*,char*,int,char*,int) ;
 int strcat (char*,char*) ;
 size_t strlen (char*) ;

int BotLoadChatMessage(source_t *source, char *chatmessagestring)
{
 char *ptr;
 token_t token;

 ptr = chatmessagestring;
 *ptr = 0;

 while(1)
 {
  if (!PC_ExpectAnyToken(source, &token)) return qfalse;

  if (token.type == TT_STRING)
  {
   StripDoubleQuotes(token.string);
   if (strlen(ptr) + strlen(token.string) + 1 > MAX_MESSAGE_SIZE)
   {
    SourceError(source, "chat message too long\n");
    return qfalse;
   }
   strcat(ptr, token.string);
  }

  else if (token.type == TT_NUMBER && (token.subtype & TT_INTEGER))
  {
   if (strlen(ptr) + 7 > MAX_MESSAGE_SIZE)
   {
    SourceError(source, "chat message too long\n");
    return qfalse;
   }
   sprintf(&ptr[strlen(ptr)], "%cv%ld%c", ESCAPE_CHAR, token.intvalue, ESCAPE_CHAR);
  }

  else if (token.type == TT_NAME)
  {
   if (strlen(ptr) + 7 > MAX_MESSAGE_SIZE)
   {
    SourceError(source, "chat message too long\n");
    return qfalse;
   }
   sprintf(&ptr[strlen(ptr)], "%cr%s%c", ESCAPE_CHAR, token.string, ESCAPE_CHAR);
  }
  else
  {
   SourceError(source, "unknown message component %s\n", token.string);
   return qfalse;
  }
  if (PC_CheckTokenString(source, ";")) break;
  if (!PC_ExpectTokenString(source, ",")) return qfalse;
 }

 return qtrue;
}
