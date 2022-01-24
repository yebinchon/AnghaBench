#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ (* specialNumberHandler ) (TYPE_1__*,int /*<<< orphan*/ ) ;scalar_t__ token; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  scalar_t__ JSON_Parser_HandlerResult ;
typedef  TYPE_1__* JSON_Parser ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_Error_AbortedByHandler ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  JSON_Infinity ; 
 int /*<<< orphan*/  JSON_NaN ; 
 int /*<<< orphan*/  JSON_NegativeInfinity ; 
 scalar_t__ JSON_Parser_Continue ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_Success ; 
 int /*<<< orphan*/  PARSER_IN_TOKEN_HANDLER ; 
 int /*<<< orphan*/  ParserState ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ T_INFINITY ; 
 scalar_t__ T_NAN ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static JSON_Status FUNC4(JSON_Parser parser)
{
   if (parser->specialNumberHandler)
   {
      JSON_Parser_HandlerResult result;
      FUNC2(ParserState, parser->state, PARSER_IN_TOKEN_HANDLER);
      result = parser->specialNumberHandler(parser, parser->token == T_NAN ? JSON_NaN :
            (parser->token == T_INFINITY ? JSON_Infinity : JSON_NegativeInfinity));
      FUNC1(ParserState, parser->state, PARSER_IN_TOKEN_HANDLER);

      if (result != JSON_Parser_Continue)
      {
         FUNC0(parser, JSON_Error_AbortedByHandler);
         return JSON_Failure;
      }
   }
   return JSON_Success;
}