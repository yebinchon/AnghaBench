
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ token; int flags; int depth; int tokenAttributes; } ;
typedef int JSON_Status ;
typedef TYPE_1__* JSON_Parser ;


 scalar_t__ GET_FLAGS (int ,int ) ;
 int JSON_ContainsReplacedCharacter ;
 int JSON_Error_InvalidEncodingSequence ;
 int JSON_Failure ;
 scalar_t__ JSON_Parser_FlushLexer (TYPE_1__*) ;
 scalar_t__ JSON_Parser_FlushParser (TYPE_1__*) ;
 int JSON_Parser_ProcessCodepoint (TYPE_1__*,int ,size_t) ;
 int JSON_Parser_SetErrorAtCodepoint (TYPE_1__*,int ) ;
 int PARSER_EMBEDDED_DOCUMENT ;
 int PARSER_REPLACE_INVALID ;
 int REPLACEMENT_CHARACTER_CODEPOINT ;
 int SET_FLAGS_ON (int ,int ,int ) ;
 scalar_t__ T_STRING ;
 int TokenAttributes ;

__attribute__((used)) static JSON_Status JSON_Parser_HandleInvalidEncodingSequence(
      JSON_Parser parser, size_t encodedLength)
{
   if (parser->token == T_STRING && GET_FLAGS(parser->flags, PARSER_REPLACE_INVALID))
   {







      SET_FLAGS_ON(TokenAttributes, parser->tokenAttributes, JSON_ContainsReplacedCharacter);
      return JSON_Parser_ProcessCodepoint(parser, REPLACEMENT_CHARACTER_CODEPOINT, encodedLength);
   }
   else if (!parser->depth && GET_FLAGS(parser->flags, PARSER_EMBEDDED_DOCUMENT))
   {







      return (JSON_Status)(JSON_Parser_FlushLexer(parser) && JSON_Parser_FlushParser(parser));
   }
   JSON_Parser_SetErrorAtCodepoint(parser, JSON_Error_InvalidEncodingSequence);
   return JSON_Failure;
}
