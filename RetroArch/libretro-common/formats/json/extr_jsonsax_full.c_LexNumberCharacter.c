
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LexerState ;
typedef char Codepoint ;


 char EOF_CODEPOINT ;
 int LEXER_ERROR ;
__attribute__((used)) static LexerState LexNumberCharacter(LexerState state, Codepoint c)
{
   switch (state)
   {
      case 128:
         if (c == '-')
            state = 134;
         else if (c == '0')
            state = 135;
         else if (c >= '1' && c <= '9')
            state = 132;
         else
            state = LEXER_ERROR;
         break;

      case 134:
         if (c == '0')
            state = 136;
         else if (c >= '1' && c <= '9')
            state = 132;
         else
            state = LEXER_ERROR;
         break;

      case 135:
      case 136:
         if (c == '.')
            state = 139;
         else if (c == 'e' || c == 'E')
            state = 138;
         else if ((c == 'x' || c == 'X') && state == 135)
            state = 133;
         else if (c == EOF_CODEPOINT)
            state = 128;
         else
            state = LEXER_ERROR;
         break;

      case 133:
         if ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f'))
            state = 129;
         else
            state = LEXER_ERROR;
         break;

      case 129:
         if ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f'))
         {

         }
         else if (c == EOF_CODEPOINT)
            state = 128;
         else
            state = LEXER_ERROR;
         break;

      case 132:
         if (c >= '0' && c <= '9')
         {

         }
         else if (c == '.')
            state = 139;
         else if (c == 'e' || c == 'E')
            state = 138;
         else if (c == EOF_CODEPOINT)
            state = 128;
         else
            state = LEXER_ERROR;
         break;

      case 139:
         if (c >= '0' && c <= '9')
            state = 130;
         else
            state = LEXER_ERROR;
         break;

      case 130:
         if (c >= '0' && c <= '9')
         {

         }
         else if (c == 'e' || c == 'E')
            state = 138;
         else if (c == EOF_CODEPOINT)
            state = 128;
         else
            state = LEXER_ERROR;
         break;

      case 138:
         if (c == '+' || c == '-')
            state = 137;
         else if (c >= '0' && c <= '9')
            state = 131;
         else
            state = LEXER_ERROR;
         break;

      case 137:
         if (c >= '0' && c <= '9')
            state = 131;
         else
            state = LEXER_ERROR;
         break;

      case 131:
         if (c >= '0' && c <= '9')
         {

         }
         else if (c == EOF_CODEPOINT)
            state = 128;
         else
            state = LEXER_ERROR;
         break;
   }
   return state;
}
