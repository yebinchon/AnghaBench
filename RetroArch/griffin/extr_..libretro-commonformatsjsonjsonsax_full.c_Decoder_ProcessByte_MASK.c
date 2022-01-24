#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int byte ;
struct TYPE_4__ {int state; int bits; } ;
typedef  int Encoding ;
typedef  int /*<<< orphan*/  DecoderOutput ;
typedef  TYPE_1__* Decoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
#define  DECODED_1_OF_2 139 
#define  DECODED_1_OF_3 138 
#define  DECODED_1_OF_4 137 
#define  DECODED_2_OF_3 136 
#define  DECODED_2_OF_4 135 
#define  DECODED_3_OF_4 134 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
#define  DECODER_RESET 133 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FIRST_2_BYTE_UTF8_CODEPOINT ; 
 int FIRST_3_BYTE_UTF8_CODEPOINT ; 
 int FIRST_4_BYTE_UTF8_CODEPOINT ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
#define  JSON_UTF16BE 132 
#define  JSON_UTF16LE 131 
#define  JSON_UTF32BE 130 
#define  JSON_UTF32LE 129 
#define  JSON_UTF8 128 
 int MAX_CODEPOINT ; 
 int /*<<< orphan*/  SEQUENCE_COMPLETE ; 
 int /*<<< orphan*/  SEQUENCE_INVALID_EXCLUSIVE ; 
 int /*<<< orphan*/  SEQUENCE_INVALID_INCLUSIVE ; 
 int /*<<< orphan*/  SEQUENCE_PENDING ; 

__attribute__((used)) static DecoderOutput FUNC15(Decoder decoder, Encoding encoding, byte b)
{
   DecoderOutput output = FUNC5(SEQUENCE_PENDING, 0, 0);
   switch (encoding)
   {
      case JSON_UTF8:
         /* When the input encoding is UTF-8, the decoded codepoint's bits are
            recorded in the bottom 3 bytes of bits as they are decoded.
            The top byte is not used. */
         switch (decoder->state)
         {
            case DECODER_RESET:
               if (FUNC14(b))
               {
                  output = FUNC5(SEQUENCE_COMPLETE, 1, b);
               }
               else if (FUNC11(b))
               {
                  /* UTF-8 2-byte sequences that are overlong encodings can be
                     detected from just the first byte (C0 or C1). */
                  decoder->bits = (uint32_t)FUNC2(b) << 6;
                  if (decoder->bits < FIRST_2_BYTE_UTF8_CODEPOINT)
                  {
                     output = FUNC5(SEQUENCE_INVALID_INCLUSIVE, 1, 0);
                  }
                  else
                  {
                     decoder->state = DECODED_1_OF_2;
                     goto noreset;
                  }
               }
               else if (FUNC12(b))
               {
                  decoder->bits = (uint32_t)FUNC1(b) << 12;
                  decoder->state = DECODED_1_OF_3;
                  goto noreset;
               }
               else if (FUNC13(b))
               {
                  /* Some UTF-8 4-byte sequences that encode out-of-range
                     codepoints can be detected from the first byte (F5 - FF). */
                  decoder->bits = (uint32_t)FUNC0(b) << 18;
                  if (decoder->bits > MAX_CODEPOINT)
                  {
                     output = FUNC5(SEQUENCE_INVALID_INCLUSIVE, 1, 0);
                  }
                  else
                  {
                     decoder->state = DECODED_1_OF_4;
                     goto noreset;
                  }
               }
               else
               {
                  /* The byte is of the form 11111xxx or 10xxxxxx, and is not
                     a valid first byte for a UTF-8 sequence. */
                  output = FUNC5(SEQUENCE_INVALID_INCLUSIVE, 1, 0);
               }
               break;

            case DECODED_1_OF_2:
               if (FUNC10(b))
               {
                  output = FUNC5(SEQUENCE_COMPLETE, 2, decoder->bits | FUNC3(b));
               }
               else
               {
                  output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);

               }
               break;

            case DECODED_1_OF_3:
               if (FUNC10(b))
               {
                  /* UTF-8 3-byte sequences that are overlong encodings or encode
                     surrogate codepoints can be detected after 2 bytes. */
                  decoder->bits |= (uint32_t)FUNC3(b) << 6;
                  if ((decoder->bits < FIRST_3_BYTE_UTF8_CODEPOINT) || FUNC8(decoder->bits))
                  {
                     output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);
                  }
                  else
                  {
                     decoder->state = DECODED_2_OF_3;
                     goto noreset;
                  }
               }
               else
               {
                  output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);
               }
               break;

            case DECODED_2_OF_3:
               if (FUNC10(b))
               {
                  output = FUNC5(SEQUENCE_COMPLETE, 3, decoder->bits | FUNC3(b));
               }
               else
               {
                  output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 2, 0);
               }
               break;

            case DECODED_1_OF_4:
               if (FUNC10(b))
               {
                  /* UTF-8 4-byte sequences that are overlong encodings or encode
                     out-of-range codepoints can be detected after 2 bytes. */
                  decoder->bits |= (uint32_t)FUNC3(b) << 12;
                  if ((decoder->bits < FIRST_4_BYTE_UTF8_CODEPOINT) || (decoder->bits > MAX_CODEPOINT))
                  {
                     output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);
                  }
                  else
                  {
                     decoder->state = DECODED_2_OF_4;
                     goto noreset;
                  }
               }
               else
               {
                  output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);
               }
               break;

            case DECODED_2_OF_4:
               if (FUNC10(b))
               {
                  decoder->bits |= (uint32_t)FUNC3(b) << 6;
                  decoder->state = DECODED_3_OF_4;
                  goto noreset;
               }
               else
               {
                  output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 2, 0);
               }
               break;

            case DECODED_3_OF_4:
               if (FUNC10(b))
               {
                  output = FUNC5(SEQUENCE_COMPLETE, 4, decoder->bits | FUNC3(b));
               }
               else
               {
                  output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 3, 0);
               }
               break;
         }
         break;

      case JSON_UTF16LE:
         /* When the input encoding is UTF-16, the decoded codepoint's bits are
            recorded in the bottom 2 bytes of bits as they are decoded.
            If those 2 bytes form a leading surrogate, the decoder treats the
            surrogate pair as a single 4-byte sequence, shifts the leading
            surrogate into the high 2 bytes of bits, and decodes the
            trailing surrogate's bits in the bottom 2 bytes of bits. */
         switch (decoder->state)
         {
            case DECODER_RESET:
               decoder->bits = b;
               decoder->state = DECODED_1_OF_2;
               goto noreset;

            case DECODED_1_OF_2:
               decoder->bits |= (uint32_t)b << 8;
               if (FUNC9(decoder->bits))
               {
                  /* A trailing surrogate cannot appear on its own. */
                  output = FUNC5(SEQUENCE_INVALID_INCLUSIVE, 2, 0);
               }
               else if (FUNC7(decoder->bits))
               {
                  /* A leading surrogate implies a 4-byte surrogate pair. */
                  decoder->bits <<= 16;
                  decoder->state = DECODED_2_OF_4;
                  goto noreset;
               }
               else
               {
                  output = FUNC5(SEQUENCE_COMPLETE, 2, decoder->bits);
               }
               break;

            case DECODED_2_OF_4:
               decoder->bits |= b;
               decoder->state = DECODED_3_OF_4;
               goto noreset;

            case DECODED_3_OF_4:
               decoder->bits |= (uint32_t)b << 8;
               if (!FUNC9(decoder->bits & 0xFFFF))
               {
                  /* A leading surrogate must be followed by a trailing one.
                     Treat the previous 3 bytes as an invalid 2-byte sequence
                     followed by the first byte of a new sequence. */
                  decoder->bits &= 0xFF;
                  decoder->state = DECODED_1_OF_2;
                  output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 2, 0);
                  goto noreset;
               }
               else
               {
                  output = FUNC5(SEQUENCE_COMPLETE, 4, FUNC4(decoder->bits));
               }
               break;
         }
         break;

      case JSON_UTF16BE:
         /* When the input encoding is UTF-16, the decoded codepoint's bits are
            recorded in the bottom 2 bytes of bits as they are decoded.
            If those 2 bytes form a leading surrogate, the decoder treats the
            surrogate pair as a single 4-byte sequence, shifts the leading
            surrogate into the high 2 bytes of bits, and decodes the
            trailing surrogate's bits in the bottom 2 bytes of bits. */
         switch (decoder->state)
         {
            case DECODER_RESET:
               decoder->bits = (uint32_t)b << 8;
               decoder->state = DECODED_1_OF_2;
               goto noreset;

            case DECODED_1_OF_2:
               decoder->bits |= b;
               if (FUNC9(decoder->bits))
               {
                  /* A trailing surrogate cannot appear on its own. */
                  output = FUNC5(SEQUENCE_INVALID_INCLUSIVE, 2, 0);
               }
               else if (FUNC7(decoder->bits))
               {
                  /* A leading surrogate implies a 4-byte surrogate pair. */
                  decoder->bits <<= 16;
                  decoder->state = DECODED_2_OF_4;
                  goto noreset;
               }
               else
               {
                  output = FUNC5(SEQUENCE_COMPLETE, 2, decoder->bits);
               }
               break;

            case DECODED_2_OF_4:
               decoder->bits |= (uint32_t)b << 8;
               decoder->state = DECODED_3_OF_4;
               goto noreset;

            case DECODED_3_OF_4:
               decoder->bits |= b;
               if (!FUNC9(decoder->bits & 0xFFFF))
               {
                  /* A leading surrogate must be followed by a trailing one.
                     Treat the previous 3 bytes as an invalid 2-byte sequence
                     followed by the first byte of a new sequence. */
                  decoder->bits &= 0xFF00;
                  decoder->state = DECODED_1_OF_2;
                  output = FUNC5(SEQUENCE_INVALID_EXCLUSIVE, 2, 0);
                  goto noreset;
               }
               else
               {
                  output = FUNC5(SEQUENCE_COMPLETE, 4, FUNC4(decoder->bits));
               }
               break;
         }
         break;

      case JSON_UTF32LE:
         /* When the input encoding is UTF-32, the decoded codepoint's bits are
            recorded in bits as they are decoded. */
         switch (decoder->state)
         {
            case DECODER_RESET:
               decoder->state = DECODED_1_OF_4;
               decoder->bits = (uint32_t)b;
               goto noreset;

            case DECODED_1_OF_4:
               decoder->state = DECODED_2_OF_4;
               decoder->bits |= (uint32_t)b << 8;
               goto noreset;

            case DECODED_2_OF_4:
               decoder->state = DECODED_3_OF_4;
               decoder->bits |= (uint32_t)b << 16;
               goto noreset;

            case DECODED_3_OF_4:
               decoder->bits |= (uint32_t)b << 24;
               output = (FUNC8(decoder->bits) || (decoder->bits > MAX_CODEPOINT))
                  ? FUNC5(SEQUENCE_INVALID_INCLUSIVE, 4, 0)
                  : FUNC5(SEQUENCE_COMPLETE, 4, decoder->bits);
               break;
         }
         break;

      case JSON_UTF32BE:
         /* When the input encoding is UTF-32, the decoded codepoint's bits are
            recorded in bits as they are decoded. */
         switch (decoder->state)
         {
            case DECODER_RESET:
               decoder->state = DECODED_1_OF_4;
               decoder->bits = (uint32_t)b << 24;
               goto noreset;

            case DECODED_1_OF_4:
               decoder->state = DECODED_2_OF_4;
               decoder->bits |= (uint32_t)b << 16;
               goto noreset;

            case DECODED_2_OF_4:
               decoder->state = DECODED_3_OF_4;
               decoder->bits |= (uint32_t)b << 8;
               goto noreset;

            case DECODED_3_OF_4:
               decoder->bits |= b;
               output = (FUNC8(decoder->bits) || (decoder->bits > MAX_CODEPOINT))
                  ? FUNC5(SEQUENCE_INVALID_INCLUSIVE, 4, 0)
                  : FUNC5(SEQUENCE_COMPLETE, 4, decoder->bits);
               break;
         }
         break;
   }

   /* Reset the decoder for the next sequence. */
   FUNC6(decoder);

noreset:
   return output;
}