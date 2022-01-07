
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int escapeSequence ;
typedef char byte ;
typedef int WriteBuffer ;
typedef int JSON_Writer ;
typedef int JSON_Status ;
typedef int Codepoint ;


 int FIRST_NON_BMP_CODEPOINT ;
 int JSON_Failure ;
 int JSON_Success ;
 int SURROGATES_FROM_CODEPOINT (int) ;
 int WriteBuffer_WriteCodepoint (int ,int ,char) ;

__attribute__((used)) static JSON_Status WriteBuffer_WriteHexEscapeSequence(WriteBuffer buffer, JSON_Writer writer, Codepoint c)
{
   if (c >= FIRST_NON_BMP_CODEPOINT)
   {





      c = SURROGATES_FROM_CODEPOINT(c);
      c = (c << 16) | (c >> 16);
   }
   do
   {
      static const byte hexDigits[16] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
      byte escapeSequence[6];
      int i;
      escapeSequence[0] = '\\';
      escapeSequence[1] = 'u';
      escapeSequence[2] = hexDigits[(c >> 12) & 0xF];
      escapeSequence[3] = hexDigits[(c >> 8) & 0xF];
      escapeSequence[4] = hexDigits[(c >> 4) & 0xF];
      escapeSequence[5] = hexDigits[c & 0xF];
      for (i = 0; i < sizeof(escapeSequence); i++)
      {
         if (!WriteBuffer_WriteCodepoint(buffer, writer, escapeSequence[i]))
            return JSON_Failure;
      }
      c >>= 16;
   } while (c);
   return JSON_Success;
}
