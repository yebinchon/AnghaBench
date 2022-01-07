
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ writer; scalar_t__ parser; } ;
struct TYPE_5__ {scalar_t__ byte; scalar_t__ column; scalar_t__ line; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ JSON_Location ;
typedef scalar_t__ JSON_Error ;
typedef TYPE_2__ JSONContext ;


 int JSON_ErrorString (scalar_t__) ;
 scalar_t__ JSON_Error_AbortedByHandler ;
 scalar_t__ JSON_Parser_GetError (scalar_t__) ;
 int JSON_Parser_GetErrorLocation (scalar_t__,TYPE_1__*) ;
 scalar_t__ JSON_Writer_GetError (scalar_t__) ;
 int RARCH_WARN (char*,int,...) ;

__attribute__((used)) static void JSONLogError(JSONContext *pCtx)
{
   if (pCtx->parser && JSON_Parser_GetError(pCtx->parser) != JSON_Error_AbortedByHandler)
   {
      JSON_Error error = JSON_Parser_GetError(pCtx->parser);
      JSON_Location errorLocation = { 0, 0, 0 };

      (void)JSON_Parser_GetErrorLocation(pCtx->parser, &errorLocation);
      RARCH_WARN("Error: Invalid JSON at line %d, column %d (input byte %d) - %s.\n",
            (int)errorLocation.line + 1,
            (int)errorLocation.column + 1,
            (int)errorLocation.byte,
            JSON_ErrorString(error));
   }
   else if (pCtx->writer && JSON_Writer_GetError(pCtx->writer) != JSON_Error_AbortedByHandler)
   {
      RARCH_WARN("Error: could not write output - %s.\n", JSON_ErrorString(JSON_Writer_GetError(pCtx->writer)));
   }
}
