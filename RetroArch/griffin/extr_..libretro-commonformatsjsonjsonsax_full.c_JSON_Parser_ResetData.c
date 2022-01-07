
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tokenBytesLength; int state; int * arrayItemHandler; int * endArrayHandler; int * startArrayHandler; int * objectMemberHandler; int * endObjectHandler; int * startObjectHandler; int * specialNumberHandler; int * numberHandler; int * stringHandler; int * booleanHandler; int * nullHandler; int * encodingDetectedHandler; int grammarianData; int decoderData; int * pMemberNames; void* maxNumberLength; void* maxStringLength; scalar_t__ tokenBytesUsed; int defaultTokenBytes; int pTokenBytes; scalar_t__ depth; scalar_t__ tokenLocationColumn; scalar_t__ tokenLocationLine; scalar_t__ tokenLocationByte; scalar_t__ codepointLocationColumn; scalar_t__ codepointLocationLine; scalar_t__ codepointLocationByte; scalar_t__ lexerBits; int lexerState; scalar_t__ errorOffset; int error; scalar_t__ tokenAttributes; int token; void* numberEncoding; void* stringEncoding; int inputEncoding; int flags; int * userData; } ;
typedef TYPE_1__* JSON_Parser ;


 int Decoder_Reset (int *) ;
 int Grammarian_Reset (int *,int) ;
 int JSON_Error_None ;
 int JSON_Parser_PopMemberNameList (TYPE_1__*) ;
 void* JSON_UTF8 ;
 int JSON_UnknownEncoding ;
 int LEXING_WHITESPACE ;
 int PARSER_DEFAULT_FLAGS ;
 int PARSER_RESET ;
 void* SIZE_MAX ;
 int T_NONE ;

__attribute__((used)) static void JSON_Parser_ResetData(JSON_Parser parser, int isInitialized)
{
   parser->userData = ((void*)0);
   parser->flags = PARSER_DEFAULT_FLAGS;
   parser->inputEncoding = JSON_UnknownEncoding;
   parser->stringEncoding = JSON_UTF8;
   parser->numberEncoding = JSON_UTF8;
   parser->token = T_NONE;
   parser->tokenAttributes = 0;
   parser->error = JSON_Error_None;
   parser->errorOffset = 0;
   parser->lexerState = LEXING_WHITESPACE;
   parser->lexerBits = 0;
   parser->codepointLocationByte = 0;
   parser->codepointLocationLine = 0;
   parser->codepointLocationColumn = 0;
   parser->tokenLocationByte = 0;
   parser->tokenLocationLine = 0;
   parser->tokenLocationColumn = 0;
   parser->depth = 0;

   if (!isInitialized)
   {
      parser->pTokenBytes = parser->defaultTokenBytes;
      parser->tokenBytesLength = sizeof(parser->defaultTokenBytes);
   }
   else
   {




   }
   parser->tokenBytesUsed = 0;
   parser->maxStringLength = SIZE_MAX;
   parser->maxNumberLength = SIZE_MAX;
   if (!isInitialized)
      parser->pMemberNames = ((void*)0);
   else
   {
      while (parser->pMemberNames)
         JSON_Parser_PopMemberNameList(parser);
   }
   Decoder_Reset(&parser->decoderData);
   Grammarian_Reset(&parser->grammarianData, isInitialized);
   parser->encodingDetectedHandler = ((void*)0);
   parser->nullHandler = ((void*)0);
   parser->booleanHandler = ((void*)0);
   parser->stringHandler = ((void*)0);
   parser->numberHandler = ((void*)0);
   parser->specialNumberHandler = ((void*)0);
   parser->startObjectHandler = ((void*)0);
   parser->endObjectHandler = ((void*)0);
   parser->objectMemberHandler = ((void*)0);
   parser->startArrayHandler = ((void*)0);
   parser->endArrayHandler = ((void*)0);
   parser->arrayItemHandler = ((void*)0);
   parser->state = PARSER_RESET;
}
