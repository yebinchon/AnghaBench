
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int byte ;
struct TYPE_8__ {int state; int bits; } ;
struct TYPE_7__ {scalar_t__ inputEncoding; TYPE_6__ decoderData; } ;
typedef int JSON_Status ;
typedef TYPE_1__* JSON_Parser ;





 int DECODER_RESET ;
 int DECODER_STATE_BYTES (int) ;
 scalar_t__ Decoder_SequencePending (TYPE_6__*) ;
 int JSON_Failure ;
 int JSON_Parser_CallEncodingDetectedHandler (TYPE_1__*) ;
 int JSON_Parser_HandleInvalidEncodingSequence (TYPE_1__*,int) ;
 int JSON_Parser_ProcessInputBytes (TYPE_1__*,int*,size_t) ;
 int JSON_Success ;
 void* JSON_UTF16BE ;
 void* JSON_UTF16LE ;
 void* JSON_UTF8 ;
 scalar_t__ JSON_UnknownEncoding ;

__attribute__((used)) static JSON_Status JSON_Parser_FlushDecoder(JSON_Parser parser)
{
   if (parser->inputEncoding == JSON_UnknownEncoding &&
         parser->decoderData.state != DECODER_RESET)
   {
      byte bytes[3];
      size_t length = 0;
      bytes[0] = (byte)(parser->decoderData.bits >> 24);
      bytes[1] = (byte)(parser->decoderData.bits >> 16);
      bytes[2] = (byte)(parser->decoderData.bits >> 8);

      switch (parser->decoderData.state)
      {
         case 130:
            parser->inputEncoding = JSON_UTF8;
            length = 1;
            break;

         case 129:

            if (bytes[0] == 0xFF && bytes[1] == 0xFE)
               parser->inputEncoding = JSON_UTF16LE;

            else if (bytes[0] == 0xFE && bytes[1] == 0xFF)
               parser->inputEncoding = JSON_UTF16BE;
            else if (bytes[0] != 0x00)
            {


               parser->inputEncoding = bytes[1] ? JSON_UTF8 : JSON_UTF16LE;
            }

            else if (bytes[1] != 0x00)
               parser->inputEncoding = JSON_UTF16BE;

            else
               return JSON_Parser_HandleInvalidEncodingSequence(parser, 2);
            length = 2;
            break;

         case 128:
            parser->inputEncoding = JSON_UTF8;
            length = 3;
            break;
      }

      if (!JSON_Parser_CallEncodingDetectedHandler(parser))
         return JSON_Failure;


      parser->decoderData.state = DECODER_RESET;
      parser->decoderData.bits = 0;
      if (!JSON_Parser_ProcessInputBytes(parser, bytes, length))
         return JSON_Failure;
   }


   if (Decoder_SequencePending(&parser->decoderData))
      return JSON_Parser_HandleInvalidEncodingSequence(
            parser, DECODER_STATE_BYTES(parser->decoderData.state));
   return JSON_Success;
}
