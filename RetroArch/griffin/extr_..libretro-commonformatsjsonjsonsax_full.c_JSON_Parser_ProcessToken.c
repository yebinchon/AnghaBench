
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tokenBytesUsed; scalar_t__ tokenAttributes; int token; scalar_t__ lexerBits; int lexerState; int memorySuite; int grammarianData; } ;
typedef int JSON_Status ;
typedef TYPE_1__* JSON_Parser ;
typedef int GrammarianOutput ;



 int GRAMMARIAN_EVENT (int ) ;
 int GRAMMARIAN_RESULT_CODE (int ) ;
 int Grammarian_ProcessToken (int *,int ,int *) ;
 int JSON_Error_OutOfMemory ;
 int JSON_Error_UnexpectedToken ;
 int JSON_Failure ;
 int JSON_Parser_HandleGrammarEvents (TYPE_1__*,int ) ;
 int JSON_Parser_SetErrorAtCodepoint (TYPE_1__*,int ) ;
 int JSON_Parser_SetErrorAtToken (TYPE_1__*,int ) ;
 int JSON_Success ;
 int LEXING_WHITESPACE ;


 int T_NONE ;

__attribute__((used)) static JSON_Status JSON_Parser_ProcessToken(JSON_Parser parser)
{
   GrammarianOutput output;
   output = Grammarian_ProcessToken(&parser->grammarianData, parser->token, &parser->memorySuite);
   switch (GRAMMARIAN_RESULT_CODE(output))
   {
      case 130:
         if (!JSON_Parser_HandleGrammarEvents(parser, GRAMMARIAN_EVENT(output)))
            return JSON_Failure;
         break;

      case 129:
         JSON_Parser_SetErrorAtToken(parser, JSON_Error_UnexpectedToken);
         return JSON_Failure;

      case 128:
         JSON_Parser_SetErrorAtCodepoint(parser, JSON_Error_OutOfMemory);
         return JSON_Failure;
   }


   parser->lexerState = LEXING_WHITESPACE;
   parser->lexerBits = 0;
   parser->token = T_NONE;
   parser->tokenAttributes = 0;
   parser->tokenBytesUsed = 0;
   return JSON_Success;
}
