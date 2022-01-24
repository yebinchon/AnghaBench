#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ token; int /*<<< orphan*/  flags; int /*<<< orphan*/  depth; int /*<<< orphan*/  tokenAttributes; } ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  TYPE_1__* JSON_Parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_ContainsReplacedCharacter ; 
 int /*<<< orphan*/  JSON_Error_InvalidEncodingSequence ; 
 int /*<<< orphan*/  JSON_Failure ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSER_EMBEDDED_DOCUMENT ; 
 int /*<<< orphan*/  PARSER_REPLACE_INVALID ; 
 int /*<<< orphan*/  REPLACEMENT_CHARACTER_CODEPOINT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ T_STRING ; 
 int /*<<< orphan*/  TokenAttributes ; 

__attribute__((used)) static JSON_Status FUNC6(
      JSON_Parser parser, size_t encodedLength)
{
   if (parser->token == T_STRING && FUNC0(parser->flags, PARSER_REPLACE_INVALID))
   {
      /* Since we're inside a string token, replacing the invalid sequence
         with the Unicode replacement character as requested by the client
         is a viable way to avoid a parse failure. Outside a string token,
         such a replacement would simply trigger JSON_Error_UnknownToken
         when we tried to process the replacement character, so it's less
         confusing to stick with JSON_Error_InvalidEncodingSequence in that
         case. */
      FUNC5(TokenAttributes, parser->tokenAttributes, JSON_ContainsReplacedCharacter);
      return FUNC3(parser, REPLACEMENT_CHARACTER_CODEPOINT, encodedLength);
   }
   else if (!parser->depth && FUNC0(parser->flags, PARSER_EMBEDDED_DOCUMENT))
   {
      /* Since we're parsing the top-level value of an embedded
         document, assume that the invalid encoding sequence we've
         encountered does not actually belong to the document, and
         finish parsing by pretending that we've encountered EOF
         instead of an invalid sequence. If the content is valid,
         this will fail with JSON_Error_StoppedAfterEmbeddedDocument;
         otherwise, it will fail with an appropriate error. */
      return (JSON_Status)(FUNC1(parser) && FUNC2(parser));
   }
   FUNC4(parser, JSON_Error_InvalidEncodingSequence);
   return JSON_Failure;
}