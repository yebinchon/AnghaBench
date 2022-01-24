#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int member_1; int member_2; char const* member_3; int column; char* label; int /*<<< orphan*/  line_no; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ dat_converter_token_t ;
typedef  int /*<<< orphan*/  dat_converter_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  DAT_CONVERTER_TOKEN_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static dat_converter_list_t* FUNC2(
      char* src, const char* dat_path)
{
   dat_converter_list_t* token_list =
      FUNC1(DAT_CONVERTER_TOKEN_LIST);
   dat_converter_token_t token      = {NULL, 1, 1, dat_path};
   bool quoted_token                = false;

   while (*src)
   {
      if ((!quoted_token && (*src == '\t' || *src == ' ')) || (*src == '\r'))
      {
         *src = '\0';
         src++;
         token.column++;
         token.label = NULL;
         quoted_token = false;
         continue;
      }

      if (*src == '\n')
      {
         *src = '\0';
         src++;
         token.column = 1;
         token.line_no++;
         token.label = NULL;
         quoted_token = false;
         continue;
      }

      if (*src == '\"')
      {
         *src = '\0';
         src++;
         token.column++;
         quoted_token = !quoted_token;
         token.label = NULL;

         if (quoted_token)
         {
            token.label = src;
            FUNC0(token_list, &token);
         }

         continue;
      }

      if (!token.label)
      {
         token.label = src;
         FUNC0(token_list, &token);
      }

      src++;
      token.column++;
   }

   token.label = NULL;
   FUNC0(token_list, &token);

   return token_list;
}