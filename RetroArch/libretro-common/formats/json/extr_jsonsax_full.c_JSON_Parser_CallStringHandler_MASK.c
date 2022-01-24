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
struct TYPE_6__ {scalar_t__ (* objectMemberHandler ) (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* stringHandler ) (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; int /*<<< orphan*/  tokenAttributes; int /*<<< orphan*/  tokenBytesUsed; scalar_t__ pTokenBytes; } ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  scalar_t__ (* JSON_Parser_StringHandler ) (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  scalar_t__ JSON_Parser_HandlerResult ;
typedef  TYPE_1__* JSON_Parser ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_Error_AbortedByHandler ; 
 int /*<<< orphan*/  JSON_Error_DuplicateObjectMember ; 
 int /*<<< orphan*/  JSON_Failure ; 
 scalar_t__ JSON_Parser_Continue ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ JSON_Parser_TreatAsDuplicateObjectMember ; 
 int /*<<< orphan*/  JSON_Success ; 
 int /*<<< orphan*/  PARSER_IN_TOKEN_HANDLER ; 
 int /*<<< orphan*/  ParserState ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static JSON_Status FUNC4(JSON_Parser parser, int isObjectMember)
{
   JSON_Parser_StringHandler handler = isObjectMember ? parser->objectMemberHandler : parser->stringHandler;
   if (handler)
   {
      JSON_Parser_HandlerResult result;
      FUNC0(parser);
      FUNC3(ParserState, parser->state, PARSER_IN_TOKEN_HANDLER);
      result = handler(parser, (char*)parser->pTokenBytes, parser->tokenBytesUsed, parser->tokenAttributes);
      FUNC2(ParserState, parser->state, PARSER_IN_TOKEN_HANDLER);

      if (result != JSON_Parser_Continue)
      {
         FUNC1(parser,
               (isObjectMember && result == JSON_Parser_TreatAsDuplicateObjectMember)
               ? JSON_Error_DuplicateObjectMember
               : JSON_Error_AbortedByHandler);
         return JSON_Failure;
      }
   }
   return JSON_Success;
}