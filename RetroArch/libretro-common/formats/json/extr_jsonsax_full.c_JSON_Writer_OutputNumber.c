
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;
typedef int WriteBufferData ;
typedef scalar_t__ LexerState ;
typedef int JSON_Writer ;
typedef int JSON_Status ;
typedef int Encoding ;
typedef int DecoderResultCode ;
typedef int DecoderOutput ;
typedef int DecoderData ;
typedef int Codepoint ;


 int DECODER_CODEPOINT (int ) ;
 int DECODER_RESULT_CODE (int ) ;
 int Decoder_ProcessByte (int *,int ,int const) ;
 int Decoder_Reset (int *) ;
 scalar_t__ Decoder_SequencePending (int *) ;
 int EOF_CODEPOINT ;
 int JSON_Error_InvalidEncodingSequence ;
 int JSON_Error_InvalidNumber ;
 int JSON_Failure ;
 int JSON_Success ;
 int JSON_Writer_SetError (int ,int ) ;
 scalar_t__ LEXER_ERROR ;
 scalar_t__ LEXING_WHITESPACE ;
 scalar_t__ LexNumberCharacter (scalar_t__,int ) ;




 scalar_t__ WriteBuffer_Flush (int *,int ) ;
 int WriteBuffer_Reset (int *) ;
 int WriteBuffer_WriteCodepoint (int *,int ,int ) ;

__attribute__((used)) static JSON_Status JSON_Writer_OutputNumber(JSON_Writer writer, const byte* pBytes, size_t length, Encoding encoding)
{
   DecoderData decoderData;
   WriteBufferData bufferData;
   LexerState lexerState = LEXING_WHITESPACE;
   size_t i;
   Decoder_Reset(&decoderData);
   WriteBuffer_Reset(&bufferData);
   for (i = 0; i < length; i++)
   {
      DecoderOutput output = Decoder_ProcessByte(&decoderData, encoding, pBytes[i]);
      DecoderResultCode result = DECODER_RESULT_CODE(output);
      Codepoint c;
      switch (result)
      {
         case 128:
            break;

         case 131:
            c = DECODER_CODEPOINT(output);
            lexerState = LexNumberCharacter(lexerState, c);
            if (lexerState == LEXER_ERROR)
            {

               if (WriteBuffer_Flush(&bufferData, writer))
                  JSON_Writer_SetError(writer, JSON_Error_InvalidNumber);
               return JSON_Failure;
            }
            if (!WriteBuffer_WriteCodepoint(&bufferData, writer, c))
               return JSON_Failure;
            break;

         case 129:
         case 130:

            if (WriteBuffer_Flush(&bufferData, writer))
               JSON_Writer_SetError(writer, JSON_Error_InvalidEncodingSequence);
            return JSON_Failure;
      }
   }
   if (!WriteBuffer_Flush(&bufferData, writer))
      return JSON_Failure;
   if (Decoder_SequencePending(&decoderData))
   {
      JSON_Writer_SetError(writer, JSON_Error_InvalidEncodingSequence);
      return JSON_Failure;
   }
   if (LexNumberCharacter(lexerState, EOF_CODEPOINT) == LEXER_ERROR)
   {
      JSON_Writer_SetError(writer, JSON_Error_InvalidNumber);
      return JSON_Failure;
   }
   return JSON_Success;
}
