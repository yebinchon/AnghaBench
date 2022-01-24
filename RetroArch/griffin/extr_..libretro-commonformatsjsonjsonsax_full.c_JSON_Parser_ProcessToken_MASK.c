#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tokenBytesUsed; scalar_t__ tokenAttributes; int /*<<< orphan*/  token; scalar_t__ lexerBits; int /*<<< orphan*/  lexerState; int /*<<< orphan*/  memorySuite; int /*<<< orphan*/  grammarianData; } ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  TYPE_1__* JSON_Parser ;
typedef  int /*<<< orphan*/  GrammarianOutput ;

/* Variables and functions */
#define  ACCEPTED_TOKEN 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JSON_Error_OutOfMemory ; 
 int /*<<< orphan*/  JSON_Error_UnexpectedToken ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_Success ; 
 int /*<<< orphan*/  LEXING_WHITESPACE ; 
#define  REJECTED_TOKEN 129 
#define  SYMBOL_STACK_FULL 128 
 int /*<<< orphan*/  T_NONE ; 

__attribute__((used)) static JSON_Status FUNC6(JSON_Parser parser)
{
   GrammarianOutput output;
   output = FUNC2(&parser->grammarianData, parser->token, &parser->memorySuite);
   switch (FUNC1(output))
   {
      case ACCEPTED_TOKEN:
         if (!FUNC3(parser, FUNC0(output)))
            return JSON_Failure;
         break;

      case REJECTED_TOKEN:
         FUNC5(parser, JSON_Error_UnexpectedToken);
         return JSON_Failure;

      case SYMBOL_STACK_FULL:
         FUNC4(parser, JSON_Error_OutOfMemory);
         return JSON_Failure;
   }

   /* Reset the lexer to prepare for the next token. */
   parser->lexerState = LEXING_WHITESPACE;
   parser->lexerBits = 0;
   parser->token = T_NONE;
   parser->tokenAttributes = 0;
   parser->tokenBytesUsed = 0;
   return JSON_Success;
}