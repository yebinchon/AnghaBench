
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {scalar_t__ inputEncoding; int decoderData; } ;
typedef int JSON_Status ;
typedef TYPE_1__* JSON_Parser ;
typedef int DecoderResultCode ;
typedef int DecoderOutput ;


 int DECODER_CODEPOINT (int ) ;
 int DECODER_RESULT_CODE (int ) ;
 int DECODER_SEQUENCE_LENGTH (int ) ;
 int Decoder_ProcessByte (int *,scalar_t__,int const) ;
 int JSON_Failure ;
 int JSON_Parser_HandleInvalidEncodingSequence (TYPE_1__*,int ) ;
 int JSON_Parser_ProcessCodepoint (TYPE_1__*,int ,int ) ;
 int JSON_Parser_ProcessUnknownByte (TYPE_1__*,int const) ;
 int JSON_Success ;
 scalar_t__ JSON_UnknownEncoding ;





JSON_Status JSON_Parser_ProcessInputBytes(JSON_Parser parser, const byte* pBytes, size_t length)
{

   size_t i = 0;
   while (parser->inputEncoding == JSON_UnknownEncoding && i < length)
   {
      if (!JSON_Parser_ProcessUnknownByte(parser, pBytes[i]))
         return JSON_Failure;
      i++;
   }
   while (i < length)
   {
      DecoderOutput output = Decoder_ProcessByte(
            &parser->decoderData, parser->inputEncoding, pBytes[i]);
      DecoderResultCode result = DECODER_RESULT_CODE(output);
      switch (result)
      {
         case 128:
            i++;
            break;

         case 131:
            if (!JSON_Parser_ProcessCodepoint(
                     parser, DECODER_CODEPOINT(output),
                     DECODER_SEQUENCE_LENGTH(output)))
               return JSON_Failure;
            i++;
            break;

         case 129:
            i++;

         case 130:
            if (!JSON_Parser_HandleInvalidEncodingSequence(
                     parser, DECODER_SEQUENCE_LENGTH(output)))
               return JSON_Failure;
            break;
      }
   }
   return JSON_Success;
}
