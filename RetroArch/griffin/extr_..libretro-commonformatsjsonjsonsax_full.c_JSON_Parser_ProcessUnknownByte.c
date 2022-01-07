
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int byte ;
struct TYPE_8__ {int state; int bits; } ;
struct TYPE_7__ {TYPE_6__ decoderData; void* inputEncoding; } ;
typedef int JSON_Status ;
typedef TYPE_1__* JSON_Parser ;






 int Decoder_Reset (TYPE_6__*) ;
 int JSON_Failure ;
 int JSON_Parser_CallEncodingDetectedHandler (TYPE_1__*) ;
 int JSON_Parser_HandleInvalidEncodingSequence (TYPE_1__*,int) ;
 int JSON_Parser_ProcessInputBytes (TYPE_1__*,int*,int) ;
 int JSON_Success ;
 void* JSON_UTF16BE ;
 void* JSON_UTF16LE ;
 void* JSON_UTF32BE ;
 void* JSON_UTF32LE ;
 void* JSON_UTF8 ;
 void* JSON_UnknownEncoding ;
 int LONGEST_ENCODING_SEQUENCE ;

__attribute__((used)) static JSON_Status JSON_Parser_ProcessUnknownByte(JSON_Parser parser, byte b)
{


   byte bytes[LONGEST_ENCODING_SEQUENCE];

   switch (parser->decoderData.state)
   {
      case 128:
         parser->decoderData.state = 131;
         parser->decoderData.bits = (uint32_t)b << 24;
         break;

      case 131:
         parser->decoderData.state = 130;
         parser->decoderData.bits |= (uint32_t)b << 16;
         break;

      case 130:
         parser->decoderData.state = 129;
         parser->decoderData.bits |= (uint32_t)b << 8;
         break;

      case 129:
         bytes[0] = (byte)(parser->decoderData.bits >> 24);
         bytes[1] = (byte)(parser->decoderData.bits >> 16);
         bytes[2] = (byte)(parser->decoderData.bits >> 8);
         bytes[3] = (byte)(b);
         if (bytes[0] == 0xEF && bytes[1] == 0xBB && bytes[2] == 0xBF)
         {

            parser->inputEncoding = JSON_UTF8;
         }
         else if (bytes[0] == 0xFF && bytes[1] == 0xFE && bytes[3] == 0x00)
         {


            parser->inputEncoding = (bytes[2] == 0x00) ? JSON_UTF32LE : JSON_UTF16LE;
         }
         else if (bytes[0] == 0x00 && bytes[1] == 0x00 && bytes[2] == 0xFE && bytes[3] == 0xFF)
         {

            parser->inputEncoding = JSON_UTF32BE;
         }
         else if (bytes[0] == 0xFE && bytes[1] == 0xFF)
         {

            parser->inputEncoding = JSON_UTF16BE;
         }
         else if (bytes[0] != 0x00)
         {

            if (bytes[1] != 0x00)
            {

               parser->inputEncoding = JSON_UTF8;
            }
            else if (bytes[2] != 0x00)
            {

               parser->inputEncoding = JSON_UTF16LE;
            }
            else if (bytes[3] == 0x00)
            {

               parser->inputEncoding = JSON_UTF32LE;
            }
            else
            {

            }
         }
         else if (bytes[1] != 0x00)
         {

            parser->inputEncoding = JSON_UTF16BE;
         }
         else if (bytes[2] == 0x00 && bytes[3] != 0x00)
         {

            parser->inputEncoding = JSON_UTF32BE;
         }
         else
         {


         }

         if (parser->inputEncoding == JSON_UnknownEncoding)
            return JSON_Parser_HandleInvalidEncodingSequence(parser, 4);

         if (!JSON_Parser_CallEncodingDetectedHandler(parser))
            return JSON_Failure;


         Decoder_Reset(&parser->decoderData);
         return JSON_Parser_ProcessInputBytes(parser, bytes, 4);
   }


   return JSON_Success;
}
