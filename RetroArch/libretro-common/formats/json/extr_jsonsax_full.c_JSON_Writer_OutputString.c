
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef char byte ;
typedef int WriteBufferData ;
struct TYPE_9__ {int outputEncoding; int flags; } ;
typedef TYPE_1__* JSON_Writer ;
typedef int JSON_Status ;
typedef int Encoding ;
typedef int DecoderResultCode ;
typedef int DecoderOutput ;
typedef int DecoderData ;
typedef char Codepoint ;


 char DECODER_CODEPOINT (int ) ;
 int DECODER_RESULT_CODE (int ) ;
 int Decoder_ProcessByte (int *,int ,char const) ;
 int Decoder_Reset (int *) ;
 scalar_t__ Decoder_SequencePending (int *) ;
 scalar_t__ GET_FLAGS (int ,int ) ;
 int JSON_Error_InvalidEncodingSequence ;
 int JSON_Failure ;
 int JSON_Success ;
 char JSON_Writer_GetCodepointEscapeCharacter (TYPE_1__*,char) ;
 int JSON_Writer_SetError (TYPE_1__*,int ) ;
 char REPLACEMENT_CHARACTER_CODEPOINT ;




 int SHORTEST_ENCODING_SEQUENCE (int) ;
 int WRITER_REPLACE_INVALID ;
 scalar_t__ WriteBuffer_Flush (int *,TYPE_1__*) ;
 int WriteBuffer_Reset (int *) ;
 int WriteBuffer_WriteBytes (int *,TYPE_1__*,char const*,size_t) ;
 int WriteBuffer_WriteCodepoint (int *,TYPE_1__*,char) ;
 int WriteBuffer_WriteHexEscapeSequence (int *,TYPE_1__*,char) ;

__attribute__((used)) static JSON_Status JSON_Writer_OutputString(JSON_Writer writer, const byte* pBytes, size_t length, Encoding encoding)
{
   static const byte quoteUTF[] = { 0, 0, 0, '"', 0, 0, 0 };
   static const byte* const quoteEncodings[5] = { quoteUTF + 3, quoteUTF + 3, quoteUTF + 2, quoteUTF + 3, quoteUTF };

   const byte* pQuoteEncoded = quoteEncodings[writer->outputEncoding - 1];
   size_t minSequenceLength = (size_t)SHORTEST_ENCODING_SEQUENCE(writer->outputEncoding);
   DecoderData decoderData;
   WriteBufferData bufferData;
   size_t i = 0;

   WriteBuffer_Reset(&bufferData);


   if (!WriteBuffer_WriteBytes(&bufferData, writer, pQuoteEncoded, minSequenceLength))
      return JSON_Failure;


   Decoder_Reset(&decoderData);
   while (i < length)
   {
      DecoderOutput output = Decoder_ProcessByte(&decoderData, encoding, pBytes[i]);
      DecoderResultCode result = DECODER_RESULT_CODE(output);
      Codepoint c;
      Codepoint escapeCharacter;
      switch (result)
      {
         case 128:
            i++;
            break;

         case 131:
            c = DECODER_CODEPOINT(output);
            escapeCharacter = JSON_Writer_GetCodepointEscapeCharacter(writer, c);
            switch (escapeCharacter)
            {
               case 0:

                  if (!WriteBuffer_WriteCodepoint(&bufferData, writer, c))
                     return JSON_Failure;
                  break;

               case 'u':

                  if (!WriteBuffer_WriteHexEscapeSequence(&bufferData, writer, c))
                     return JSON_Failure;
                  break;

               default:

                  if (!WriteBuffer_WriteCodepoint(&bufferData, writer, '\\') ||
                        !WriteBuffer_WriteCodepoint(&bufferData, writer, escapeCharacter))
                     return JSON_Failure;
                  break;
            }
            i++;
            break;

         case 129:
            i++;

         case 130:
            if (GET_FLAGS(writer->flags, WRITER_REPLACE_INVALID))
            {
               if (!WriteBuffer_WriteHexEscapeSequence(&bufferData, writer, REPLACEMENT_CHARACTER_CODEPOINT))
                  return JSON_Failure;
            }
            else
            {

               if (WriteBuffer_Flush(&bufferData, writer))
                  JSON_Writer_SetError(writer, JSON_Error_InvalidEncodingSequence);
               return JSON_Failure;
            }
            break;
      }
   }
   if (Decoder_SequencePending(&decoderData))
   {
      if (GET_FLAGS(writer->flags, WRITER_REPLACE_INVALID))
      {
         if (!WriteBuffer_WriteHexEscapeSequence(&bufferData, writer, REPLACEMENT_CHARACTER_CODEPOINT))
            return JSON_Failure;
      }
      else
      {

         if (WriteBuffer_Flush(&bufferData, writer))
            JSON_Writer_SetError(writer, JSON_Error_InvalidEncodingSequence);
         return JSON_Failure;
      }
   }


   if (!WriteBuffer_WriteBytes(&bufferData, writer, pQuoteEncoded, minSequenceLength) ||
         !WriteBuffer_Flush(&bufferData, writer))
      return JSON_Failure;
   return JSON_Success;
}
