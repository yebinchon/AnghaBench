#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char byte ;
typedef  int /*<<< orphan*/  WriteBufferData ;
struct TYPE_9__ {int outputEncoding; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__* JSON_Writer ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  int /*<<< orphan*/  Encoding ;
typedef  int DecoderResultCode ;
typedef  int /*<<< orphan*/  DecoderOutput ;
typedef  int /*<<< orphan*/  DecoderData ;
typedef  char Codepoint ;

/* Variables and functions */
 char FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_Error_InvalidEncodingSequence ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  JSON_Success ; 
 char FUNC6 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char REPLACEMENT_CHARACTER_CODEPOINT ; 
#define  SEQUENCE_COMPLETE 131 
#define  SEQUENCE_INVALID_EXCLUSIVE 130 
#define  SEQUENCE_INVALID_INCLUSIVE 129 
#define  SEQUENCE_PENDING 128 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  WRITER_REPLACE_INVALID ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,char) ; 

__attribute__((used)) static JSON_Status FUNC14(JSON_Writer writer, const byte* pBytes, size_t length, Encoding encoding)
{
   static const byte quoteUTF[] = { 0, 0, 0, '"', 0, 0, 0 };
   static const byte* const quoteEncodings[5] = { quoteUTF + 3, quoteUTF + 3, quoteUTF + 2, quoteUTF + 3, quoteUTF };

   const byte* pQuoteEncoded = quoteEncodings[writer->outputEncoding - 1];
   size_t minSequenceLength = (size_t)FUNC8(writer->outputEncoding);
   DecoderData decoderData;
   WriteBufferData bufferData;
   size_t i = 0;

   FUNC10(&bufferData);

   /* Start quote. */
   if (!FUNC11(&bufferData, writer, pQuoteEncoded, minSequenceLength))
      return JSON_Failure;

   /* String contents. */
   FUNC3(&decoderData);
   while (i < length)
   {
      DecoderOutput output = FUNC2(&decoderData, encoding, pBytes[i]);
      DecoderResultCode result = FUNC1(output);
      Codepoint c;
      Codepoint escapeCharacter;
      switch (result)
      {
         case SEQUENCE_PENDING:
            i++;
            break;

         case SEQUENCE_COMPLETE:
            c = FUNC0(output);
            escapeCharacter = FUNC6(writer, c);
            switch (escapeCharacter)
            {
               case 0:
                  /* Output the codepoint as a normal encoding sequence. */
                  if (!FUNC12(&bufferData, writer, c))
                     return JSON_Failure;
                  break;

               case 'u':
                  /* Output the codepoint as 1 or 2 hex escape sequences. */
                  if (!FUNC13(&bufferData, writer, c))
                     return JSON_Failure;
                  break;

               default:
                  /* Output the codepoint as a simple escape sequence. */
                  if (!FUNC12(&bufferData, writer, '\\') ||
                        !FUNC12(&bufferData, writer, escapeCharacter))
                     return JSON_Failure;
                  break;
            }
            i++;
            break;

         case SEQUENCE_INVALID_INCLUSIVE:
            i++;
            /* fallthrough */
         case SEQUENCE_INVALID_EXCLUSIVE:
            if (FUNC5(writer->flags, WRITER_REPLACE_INVALID))
            {
               if (!FUNC13(&bufferData, writer, REPLACEMENT_CHARACTER_CODEPOINT))
                  return JSON_Failure;
            }
            else
            {
               /* Output whatever valid bytes we've accumulated before failing. */
               if (FUNC9(&bufferData, writer))
                  FUNC7(writer, JSON_Error_InvalidEncodingSequence);
               return JSON_Failure;
            }
            break;
      }
   }
   if (FUNC4(&decoderData))
   {
      if (FUNC5(writer->flags, WRITER_REPLACE_INVALID))
      {
         if (!FUNC13(&bufferData, writer, REPLACEMENT_CHARACTER_CODEPOINT))
            return JSON_Failure;
      }
      else
      {
         /* Output whatever valid bytes we've accumulated before failing. */
         if (FUNC9(&bufferData, writer))
            FUNC7(writer, JSON_Error_InvalidEncodingSequence);
         return JSON_Failure;
      }
   }

   /* End quote. */
   if (!FUNC11(&bufferData, writer, pQuoteEncoded, minSequenceLength) ||
         !FUNC9(&bufferData, writer))
      return JSON_Failure;
   return JSON_Success;
}