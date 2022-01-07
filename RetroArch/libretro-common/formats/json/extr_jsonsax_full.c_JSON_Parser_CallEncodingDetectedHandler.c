
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* encodingDetectedHandler ) (TYPE_1__*) ;} ;
typedef int JSON_Status ;
typedef TYPE_1__* JSON_Parser ;


 int JSON_Error_AbortedByHandler ;
 int JSON_Failure ;
 scalar_t__ JSON_Parser_Continue ;
 int JSON_Parser_SetErrorAtCodepoint (TYPE_1__*,int ) ;
 int JSON_Success ;
 scalar_t__ stub1 (TYPE_1__*) ;

__attribute__((used)) static JSON_Status JSON_Parser_CallEncodingDetectedHandler(JSON_Parser parser)
{
   if (parser->encodingDetectedHandler && parser->encodingDetectedHandler(parser) != JSON_Parser_Continue)
   {
      JSON_Parser_SetErrorAtCodepoint(parser, JSON_Error_AbortedByHandler);
      return JSON_Failure;
   }
   return JSON_Success;
}
