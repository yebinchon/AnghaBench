
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int byte ;
struct TYPE_4__ {int state; int bits; } ;
typedef int Encoding ;
typedef int DecoderOutput ;
typedef TYPE_1__* Decoder ;


 int BOTTOM_3_BITS (int) ;
 int BOTTOM_4_BITS (int) ;
 int BOTTOM_5_BITS (int) ;
 int BOTTOM_6_BITS (int) ;
 int CODEPOINT_FROM_SURROGATES (int) ;






 int DECODER_OUTPUT (int ,int,int) ;

 int Decoder_Reset (TYPE_1__*) ;
 int FIRST_2_BYTE_UTF8_CODEPOINT ;
 int FIRST_3_BYTE_UTF8_CODEPOINT ;
 int FIRST_4_BYTE_UTF8_CODEPOINT ;
 int IS_LEADING_SURROGATE (int) ;
 int IS_SURROGATE (int) ;
 int IS_TRAILING_SURROGATE (int) ;
 int IS_UTF8_CONTINUATION_BYTE (int) ;
 int IS_UTF8_FIRST_BYTE_OF_2 (int) ;
 int IS_UTF8_FIRST_BYTE_OF_3 (int) ;
 int IS_UTF8_FIRST_BYTE_OF_4 (int) ;
 int IS_UTF8_SINGLE_BYTE (int) ;





 int MAX_CODEPOINT ;
 int SEQUENCE_COMPLETE ;
 int SEQUENCE_INVALID_EXCLUSIVE ;
 int SEQUENCE_INVALID_INCLUSIVE ;
 int SEQUENCE_PENDING ;

__attribute__((used)) static DecoderOutput Decoder_ProcessByte(Decoder decoder, Encoding encoding, byte b)
{
   DecoderOutput output = DECODER_OUTPUT(SEQUENCE_PENDING, 0, 0);
   switch (encoding)
   {
      case 128:



         switch (decoder->state)
         {
            case 133:
               if (IS_UTF8_SINGLE_BYTE(b))
               {
                  output = DECODER_OUTPUT(SEQUENCE_COMPLETE, 1, b);
               }
               else if (IS_UTF8_FIRST_BYTE_OF_2(b))
               {


                  decoder->bits = (uint32_t)BOTTOM_5_BITS(b) << 6;
                  if (decoder->bits < FIRST_2_BYTE_UTF8_CODEPOINT)
                  {
                     output = DECODER_OUTPUT(SEQUENCE_INVALID_INCLUSIVE, 1, 0);
                  }
                  else
                  {
                     decoder->state = 139;
                     goto noreset;
                  }
               }
               else if (IS_UTF8_FIRST_BYTE_OF_3(b))
               {
                  decoder->bits = (uint32_t)BOTTOM_4_BITS(b) << 12;
                  decoder->state = 138;
                  goto noreset;
               }
               else if (IS_UTF8_FIRST_BYTE_OF_4(b))
               {


                  decoder->bits = (uint32_t)BOTTOM_3_BITS(b) << 18;
                  if (decoder->bits > MAX_CODEPOINT)
                  {
                     output = DECODER_OUTPUT(SEQUENCE_INVALID_INCLUSIVE, 1, 0);
                  }
                  else
                  {
                     decoder->state = 137;
                     goto noreset;
                  }
               }
               else
               {


                  output = DECODER_OUTPUT(SEQUENCE_INVALID_INCLUSIVE, 1, 0);
               }
               break;

            case 139:
               if (IS_UTF8_CONTINUATION_BYTE(b))
               {
                  output = DECODER_OUTPUT(SEQUENCE_COMPLETE, 2, decoder->bits | BOTTOM_6_BITS(b));
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);

               }
               break;

            case 138:
               if (IS_UTF8_CONTINUATION_BYTE(b))
               {


                  decoder->bits |= (uint32_t)BOTTOM_6_BITS(b) << 6;
                  if ((decoder->bits < FIRST_3_BYTE_UTF8_CODEPOINT) || IS_SURROGATE(decoder->bits))
                  {
                     output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);
                  }
                  else
                  {
                     decoder->state = 136;
                     goto noreset;
                  }
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);
               }
               break;

            case 136:
               if (IS_UTF8_CONTINUATION_BYTE(b))
               {
                  output = DECODER_OUTPUT(SEQUENCE_COMPLETE, 3, decoder->bits | BOTTOM_6_BITS(b));
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 2, 0);
               }
               break;

            case 137:
               if (IS_UTF8_CONTINUATION_BYTE(b))
               {


                  decoder->bits |= (uint32_t)BOTTOM_6_BITS(b) << 12;
                  if ((decoder->bits < FIRST_4_BYTE_UTF8_CODEPOINT) || (decoder->bits > MAX_CODEPOINT))
                  {
                     output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);
                  }
                  else
                  {
                     decoder->state = 135;
                     goto noreset;
                  }
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 1, 0);
               }
               break;

            case 135:
               if (IS_UTF8_CONTINUATION_BYTE(b))
               {
                  decoder->bits |= (uint32_t)BOTTOM_6_BITS(b) << 6;
                  decoder->state = 134;
                  goto noreset;
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 2, 0);
               }
               break;

            case 134:
               if (IS_UTF8_CONTINUATION_BYTE(b))
               {
                  output = DECODER_OUTPUT(SEQUENCE_COMPLETE, 4, decoder->bits | BOTTOM_6_BITS(b));
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 3, 0);
               }
               break;
         }
         break;

      case 131:






         switch (decoder->state)
         {
            case 133:
               decoder->bits = b;
               decoder->state = 139;
               goto noreset;

            case 139:
               decoder->bits |= (uint32_t)b << 8;
               if (IS_TRAILING_SURROGATE(decoder->bits))
               {

                  output = DECODER_OUTPUT(SEQUENCE_INVALID_INCLUSIVE, 2, 0);
               }
               else if (IS_LEADING_SURROGATE(decoder->bits))
               {

                  decoder->bits <<= 16;
                  decoder->state = 135;
                  goto noreset;
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_COMPLETE, 2, decoder->bits);
               }
               break;

            case 135:
               decoder->bits |= b;
               decoder->state = 134;
               goto noreset;

            case 134:
               decoder->bits |= (uint32_t)b << 8;
               if (!IS_TRAILING_SURROGATE(decoder->bits & 0xFFFF))
               {



                  decoder->bits &= 0xFF;
                  decoder->state = 139;
                  output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 2, 0);
                  goto noreset;
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_COMPLETE, 4, CODEPOINT_FROM_SURROGATES(decoder->bits));
               }
               break;
         }
         break;

      case 132:






         switch (decoder->state)
         {
            case 133:
               decoder->bits = (uint32_t)b << 8;
               decoder->state = 139;
               goto noreset;

            case 139:
               decoder->bits |= b;
               if (IS_TRAILING_SURROGATE(decoder->bits))
               {

                  output = DECODER_OUTPUT(SEQUENCE_INVALID_INCLUSIVE, 2, 0);
               }
               else if (IS_LEADING_SURROGATE(decoder->bits))
               {

                  decoder->bits <<= 16;
                  decoder->state = 135;
                  goto noreset;
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_COMPLETE, 2, decoder->bits);
               }
               break;

            case 135:
               decoder->bits |= (uint32_t)b << 8;
               decoder->state = 134;
               goto noreset;

            case 134:
               decoder->bits |= b;
               if (!IS_TRAILING_SURROGATE(decoder->bits & 0xFFFF))
               {



                  decoder->bits &= 0xFF00;
                  decoder->state = 139;
                  output = DECODER_OUTPUT(SEQUENCE_INVALID_EXCLUSIVE, 2, 0);
                  goto noreset;
               }
               else
               {
                  output = DECODER_OUTPUT(SEQUENCE_COMPLETE, 4, CODEPOINT_FROM_SURROGATES(decoder->bits));
               }
               break;
         }
         break;

      case 129:


         switch (decoder->state)
         {
            case 133:
               decoder->state = 137;
               decoder->bits = (uint32_t)b;
               goto noreset;

            case 137:
               decoder->state = 135;
               decoder->bits |= (uint32_t)b << 8;
               goto noreset;

            case 135:
               decoder->state = 134;
               decoder->bits |= (uint32_t)b << 16;
               goto noreset;

            case 134:
               decoder->bits |= (uint32_t)b << 24;
               output = (IS_SURROGATE(decoder->bits) || (decoder->bits > MAX_CODEPOINT))
                  ? DECODER_OUTPUT(SEQUENCE_INVALID_INCLUSIVE, 4, 0)
                  : DECODER_OUTPUT(SEQUENCE_COMPLETE, 4, decoder->bits);
               break;
         }
         break;

      case 130:


         switch (decoder->state)
         {
            case 133:
               decoder->state = 137;
               decoder->bits = (uint32_t)b << 24;
               goto noreset;

            case 137:
               decoder->state = 135;
               decoder->bits |= (uint32_t)b << 16;
               goto noreset;

            case 135:
               decoder->state = 134;
               decoder->bits |= (uint32_t)b << 8;
               goto noreset;

            case 134:
               decoder->bits |= b;
               output = (IS_SURROGATE(decoder->bits) || (decoder->bits > MAX_CODEPOINT))
                  ? DECODER_OUTPUT(SEQUENCE_INVALID_INCLUSIVE, 4, 0)
                  : DECODER_OUTPUT(SEQUENCE_COMPLETE, 4, decoder->bits);
               break;
         }
         break;
   }


   Decoder_Reset(decoder);

noreset:
   return output;
}
