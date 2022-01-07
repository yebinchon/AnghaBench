
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lexerState; } ;
typedef int JSON_Status ;
typedef TYPE_1__* JSON_Parser ;


 int EOF_CODEPOINT ;
 int JSON_Error_IncompleteToken ;
 int JSON_Failure ;
 int JSON_Parser_ProcessCodepoint (TYPE_1__*,int ,int ) ;
 int JSON_Parser_SetErrorAtToken (TYPE_1__*,int ) ;
 int JSON_Success ;
 scalar_t__ LEXING_WHITESPACE ;

__attribute__((used)) static JSON_Status JSON_Parser_FlushLexer(JSON_Parser parser)
{




   if (!JSON_Parser_ProcessCodepoint(parser, EOF_CODEPOINT, 0))
      return JSON_Failure;


   if (parser->lexerState != LEXING_WHITESPACE)
   {
      JSON_Parser_SetErrorAtToken(parser, JSON_Error_IncompleteToken);
      return JSON_Failure;
   }
   return JSON_Success;
}
