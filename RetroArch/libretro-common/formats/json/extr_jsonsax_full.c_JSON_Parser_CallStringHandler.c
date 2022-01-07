
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ (* objectMemberHandler ) (TYPE_1__*,char*,int ,int ) ;scalar_t__ (* stringHandler ) (TYPE_1__*,char*,int ,int ) ;int state; int tokenAttributes; int tokenBytesUsed; scalar_t__ pTokenBytes; } ;
typedef int JSON_Status ;
typedef scalar_t__ (* JSON_Parser_StringHandler ) (TYPE_1__*,char*,int ,int ) ;
typedef scalar_t__ JSON_Parser_HandlerResult ;
typedef TYPE_1__* JSON_Parser ;


 int JSON_Error_AbortedByHandler ;
 int JSON_Error_DuplicateObjectMember ;
 int JSON_Failure ;
 scalar_t__ JSON_Parser_Continue ;
 int JSON_Parser_NullTerminateToken (TYPE_1__*) ;
 int JSON_Parser_SetErrorAtToken (TYPE_1__*,int ) ;
 scalar_t__ JSON_Parser_TreatAsDuplicateObjectMember ;
 int JSON_Success ;
 int PARSER_IN_TOKEN_HANDLER ;
 int ParserState ;
 int SET_FLAGS_OFF (int ,int ,int ) ;
 int SET_FLAGS_ON (int ,int ,int ) ;

__attribute__((used)) static JSON_Status JSON_Parser_CallStringHandler(JSON_Parser parser, int isObjectMember)
{
   JSON_Parser_StringHandler handler = isObjectMember ? parser->objectMemberHandler : parser->stringHandler;
   if (handler)
   {
      JSON_Parser_HandlerResult result;
      JSON_Parser_NullTerminateToken(parser);
      SET_FLAGS_ON(ParserState, parser->state, PARSER_IN_TOKEN_HANDLER);
      result = handler(parser, (char*)parser->pTokenBytes, parser->tokenBytesUsed, parser->tokenAttributes);
      SET_FLAGS_OFF(ParserState, parser->state, PARSER_IN_TOKEN_HANDLER);

      if (result != JSON_Parser_Continue)
      {
         JSON_Parser_SetErrorAtToken(parser,
               (isObjectMember && result == JSON_Parser_TreatAsDuplicateObjectMember)
               ? JSON_Error_DuplicateObjectMember
               : JSON_Error_AbortedByHandler);
         return JSON_Failure;
      }
   }
   return JSON_Success;
}
