#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * string; int /*<<< orphan*/ * list; } ;
struct TYPE_9__ {int /*<<< orphan*/ * key; TYPE_1__ value; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ dat_converter_map_t ;
typedef  int /*<<< orphan*/  dat_converter_list_t ;
struct TYPE_8__ {char* fname; int line_no; int column; int /*<<< orphan*/ * label; } ;
struct TYPE_10__ {TYPE_2__ token; } ;
typedef  TYPE_4__ dat_converter_list_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  DAT_CONVERTER_LIST_MAP ; 
 int /*<<< orphan*/  DAT_CONVERTER_MAP_LIST ; 
 int /*<<< orphan*/  DAT_CONVERTER_STRING_MAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static dat_converter_list_t* FUNC6(
      dat_converter_list_item_t** start_token)
{
   dat_converter_list_t* parsed_table =
      FUNC2(DAT_CONVERTER_MAP_LIST);
   dat_converter_map_t map            = {0};
   dat_converter_list_item_t* current = *start_token;

   while (current->token.label)
   {

      if (!map.key)
      {
         if (FUNC5(current->token.label, ")"))
         {
            current++;
            *start_token = current;
            return parsed_table;
         }
         else if (FUNC5(current->token.label, "("))
         {
            FUNC4("%s:%d:%d: fatal error: Unexpected '(' instead of key\n",
                   current->token.fname,
                   current->token.line_no,
                   current->token.column);
            FUNC0(1);
         }
         else
         {
            map.key = current->token.label;
            current++;
         }
      }
      else
      {
         if (FUNC5(current->token.label, "("))
         {
            current++;
            map.type = DAT_CONVERTER_LIST_MAP;
            map.value.list = FUNC6(&current);
            FUNC1(parsed_table, &map);
         }
         else if (FUNC5(current->token.label, ")"))
         {
            FUNC4("%s:%d:%d: fatal error: Unexpected ')' instead of value\n",
                   current->token.fname,
                   current->token.line_no,
                   current->token.column);
            FUNC0(1);
         }
         else
         {
            map.type = DAT_CONVERTER_STRING_MAP;
            map.value.string = current->token.label;
            FUNC1(parsed_table, &map);
            current++;
         }
         map.key = NULL;
      }
   }

   FUNC4("%s:%d:%d: fatal error: Missing ')' for '('\n",
          (*start_token)->token.fname,
          (*start_token)->token.line_no,
          (*start_token)->token.column);
   FUNC0(1);

   /* unreached */
   FUNC3(parsed_table);
   return NULL;
}