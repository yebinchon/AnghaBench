#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  WriteBufferData ;
typedef  scalar_t__ LexerState ;
typedef  int /*<<< orphan*/  JSON_Writer ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  int /*<<< orphan*/  Encoding ;
typedef  int DecoderResultCode ;
typedef  int /*<<< orphan*/  DecoderOutput ;
typedef  int /*<<< orphan*/  DecoderData ;
typedef  int /*<<< orphan*/  Codepoint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EOF_CODEPOINT ; 
 int /*<<< orphan*/  JSON_Error_InvalidEncodingSequence ; 
 int /*<<< orphan*/  JSON_Error_InvalidNumber ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  JSON_Success ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ LEXER_ERROR ; 
 scalar_t__ LEXING_WHITESPACE ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
#define  SEQUENCE_COMPLETE 131 
#define  SEQUENCE_INVALID_EXCLUSIVE 130 
#define  SEQUENCE_INVALID_INCLUSIVE 129 
#define  SEQUENCE_PENDING 128 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static JSON_Status FUNC10(JSON_Writer writer, const byte* pBytes, size_t length, Encoding encoding)
{
   DecoderData decoderData;
   WriteBufferData bufferData;
   LexerState lexerState = LEXING_WHITESPACE;
   size_t i;
   FUNC3(&decoderData);
   FUNC8(&bufferData);
   for (i = 0; i < length; i++)
   {
      DecoderOutput output = FUNC2(&decoderData, encoding, pBytes[i]);
      DecoderResultCode result = FUNC1(output);
      Codepoint c;
      switch (result)
      {
         case SEQUENCE_PENDING:
            break;

         case SEQUENCE_COMPLETE:
            c = FUNC0(output);
            lexerState = FUNC6(lexerState, c);
            if (lexerState == LEXER_ERROR)
            {
               /* Output whatever valid bytes we've accumulated before failing. */
               if (FUNC7(&bufferData, writer))
                  FUNC5(writer, JSON_Error_InvalidNumber);
               return JSON_Failure;
            }
            if (!FUNC9(&bufferData, writer, c))
               return JSON_Failure;
            break;

         case SEQUENCE_INVALID_INCLUSIVE:
         case SEQUENCE_INVALID_EXCLUSIVE:
            /* Output whatever valid bytes we've accumulated before failing. */
            if (FUNC7(&bufferData, writer))
               FUNC5(writer, JSON_Error_InvalidEncodingSequence);
            return JSON_Failure;
      }
   }
   if (!FUNC7(&bufferData, writer))
      return JSON_Failure;
   if (FUNC4(&decoderData))
   {
      FUNC5(writer, JSON_Error_InvalidEncodingSequence);
      return JSON_Failure;
   }
   if (FUNC6(lexerState, EOF_CODEPOINT) == LEXER_ERROR)
   {
      FUNC5(writer, JSON_Error_InvalidNumber);
      return JSON_Failure;
   }
   return JSON_Success;
}