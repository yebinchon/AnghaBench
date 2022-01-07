
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int grammarianData; } ;
typedef int JSON_Status ;
typedef TYPE_1__* JSON_Parser ;


 int Grammarian_FinishedDocument (int *) ;
 int JSON_Error_ExpectedMoreTokens ;
 int JSON_Failure ;
 int JSON_Parser_SetErrorAtCodepoint (TYPE_1__*,int ) ;
 int JSON_Success ;

__attribute__((used)) static JSON_Status JSON_Parser_FlushParser(JSON_Parser parser)
{

   if (!Grammarian_FinishedDocument(&parser->grammarianData))
   {
      JSON_Parser_SetErrorAtCodepoint(parser, JSON_Error_ExpectedMoreTokens);
      return JSON_Failure;
   }
   return JSON_Success;
}
