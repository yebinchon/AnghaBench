
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__* JSON_Writer ;
typedef int Codepoint ;





 int FIRST_NON_ASCII_CODEPOINT ;
 int FIRST_NON_CONTROL_CODEPOINT ;

 int GET_FLAGS (int ,int ) ;
 int IS_NONCHARACTER (int) ;




 int WRITER_ESCAPE_NON_ASCII ;

__attribute__((used)) static Codepoint JSON_Writer_GetCodepointEscapeCharacter(JSON_Writer writer, Codepoint c)
{
   switch (c)
   {
      case 135:
         return 'b';

      case 128:
         return 't';

      case 131:
         return 'n';

      case 132:
         return 'f';

      case 134:
         return 'r';

      case '"':
         return '"';




      case '\\':
         return '\\';

      case 133:
      case 130:
      case 129:
         return 'u';

      default:
         if (c < FIRST_NON_CONTROL_CODEPOINT || IS_NONCHARACTER(c) ||
               (GET_FLAGS(writer->flags, WRITER_ESCAPE_NON_ASCII) && c > FIRST_NON_ASCII_CODEPOINT))
            return 'u';
         break;
   }
   return 0;
}
