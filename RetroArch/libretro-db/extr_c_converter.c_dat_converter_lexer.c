
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_2; char const* member_3; int column; char* label; int line_no; int * member_0; } ;
typedef TYPE_1__ dat_converter_token_t ;
typedef int dat_converter_list_t ;


 int DAT_CONVERTER_TOKEN_LIST ;
 int dat_converter_list_append (int *,TYPE_1__*) ;
 int * dat_converter_list_create (int ) ;

__attribute__((used)) static dat_converter_list_t* dat_converter_lexer(
      char* src, const char* dat_path)
{
   dat_converter_list_t* token_list =
      dat_converter_list_create(DAT_CONVERTER_TOKEN_LIST);
   dat_converter_token_t token = {((void*)0), 1, 1, dat_path};
   bool quoted_token = 0;

   while (*src)
   {
      if ((!quoted_token && (*src == '\t' || *src == ' ')) || (*src == '\r'))
      {
         *src = '\0';
         src++;
         token.column++;
         token.label = ((void*)0);
         quoted_token = 0;
         continue;
      }

      if (*src == '\n')
      {
         *src = '\0';
         src++;
         token.column = 1;
         token.line_no++;
         token.label = ((void*)0);
         quoted_token = 0;
         continue;
      }

      if (*src == '\"')
      {
         *src = '\0';
         src++;
         token.column++;
         quoted_token = !quoted_token;
         token.label = ((void*)0);

         if (quoted_token)
         {
            token.label = src;
            dat_converter_list_append(token_list, &token);
         }

         continue;
      }

      if (!token.label)
      {
         token.label = src;
         dat_converter_list_append(token_list, &token);
      }

      src++;
      token.column++;
   }

   token.label = ((void*)0);
   dat_converter_list_append(token_list, &token);

   return token_list;
}
