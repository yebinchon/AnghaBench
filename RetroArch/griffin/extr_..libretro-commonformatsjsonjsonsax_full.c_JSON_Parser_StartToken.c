
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codepointLocationColumn; int tokenLocationColumn; int codepointLocationLine; int tokenLocationLine; int codepointLocationByte; int tokenLocationByte; int token; } ;
typedef int Symbol ;
typedef TYPE_1__* JSON_Parser ;



__attribute__((used)) static void JSON_Parser_StartToken(JSON_Parser parser, Symbol token)
{
   parser->token = token;
   parser->tokenLocationByte = parser->codepointLocationByte;
   parser->tokenLocationLine = parser->codepointLocationLine;
   parser->tokenLocationColumn = parser->codepointLocationColumn;
}
