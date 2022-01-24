#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct string_list {scalar_t__ size; TYPE_1__* elems; } ;
struct TYPE_10__ {scalar_t__ game_specific_options; } ;
struct TYPE_11__ {TYPE_2__ bools; } ;
typedef  TYPE_3__ settings_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
struct TYPE_12__ {unsigned int size; } ;
typedef  TYPE_4__ core_option_manager_t ;
struct TYPE_9__ {char const* data; } ;

/* Variables and functions */
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS ; 
 int MENU_ENUM_LABEL_VALUE_THUMBNAILS ; 
 int MSG_LAST ; 
 int MSG_UNKNOWN ; 
 int /*<<< orphan*/  RARCH_CTL_CORE_OPTIONS_LIST_GET ; 
 int FUNC0 (char const*,char const*,unsigned int,char*,size_t) ; 
 int FUNC1 (char const*,char const*,unsigned int,char*,size_t) ; 
 TYPE_3__* FUNC2 () ; 
 char* FUNC3 (TYPE_4__*,unsigned int) ; 
 scalar_t__ FUNC4 (TYPE_4__*,unsigned int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct string_list*) ; 
 struct string_list* FUNC10 (char const*,char*) ; 
 unsigned int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

__attribute__((used)) static int FUNC13(const char *path, const char *label, unsigned menu_type, char *s, size_t len)
{
   /* Sanity check */
   if (FUNC8(path))
      return 0;

   if (FUNC12(path, "core_option_"))
   {
      /* This is a core options item */
      struct string_list *tmp_str_list = FUNC10(path, "_");
      int ret                          = 0;

      if (tmp_str_list && tmp_str_list->size > 0)
      {
         core_option_manager_t *coreopts = NULL;

         FUNC6(RARCH_CTL_CORE_OPTIONS_LIST_GET, &coreopts);

         if (coreopts)
         {
            settings_t *settings            = FUNC2();
            unsigned menu_index             = FUNC11(tmp_str_list->elems[(unsigned)tmp_str_list->size - 1].data);
            unsigned visible_index          = 0;
            unsigned option_index           = 0;
            bool option_found               = false;
            unsigned i;

            /* Convert menu index to option index */
            if (settings->bools.game_specific_options)
               menu_index--;

            for (i = 0; i < coreopts->size; i++)
            {
               if (FUNC4(coreopts, i))
               {
                  if (visible_index == menu_index)
                  {
                     option_found = true;
                     option_index = i;
                     break;
                  }
                  visible_index++;
               }
            }

            /* If option was found, title == option description */
            if (option_found)
            {
               const char *title = FUNC3(coreopts, option_index);

               if (s && !FUNC8(title))
               {
                  FUNC7(s, title, len);
                  ret = 1;
               }
            }
         }
      }

      /* Clean up */
      if (tmp_str_list)
         FUNC9(tmp_str_list);

      return ret;
   }
   else
   {
      /* This is a 'normal' drop down list */

      /* In msg_hash.h, msg_hash_enums are generated via
       * the following macro:
       *    #define MENU_LABEL(STR) \
       *       MENU_ENUM_LABEL_##STR, \
       *       MENU_ENUM_SUBLABEL_##STR, \
       *       MENU_ENUM_LABEL_VALUE_##STR
       * to get 'MENU_ENUM_LABEL_VALUE_' from a
       * 'MENU_ENUM_LABEL_', we therefore add 2... */
      enum msg_hash_enums enum_idx = (enum msg_hash_enums)(FUNC11(path) + 2);

      /* Check if enum index is valid
       * Note: This is a very crude check, but better than nothing */
      if ((enum_idx > MSG_UNKNOWN) && (enum_idx < MSG_LAST))
      {
         /* An annoyance: MENU_ENUM_LABEL_THUMBNAILS and
          * MENU_ENUM_LABEL_LEFT_THUMBNAILS require special
          * treatment, since their titles depend upon the
          * current menu driver... */
         if (enum_idx == MENU_ENUM_LABEL_VALUE_THUMBNAILS)
         {
            return FUNC1(path, label, menu_type, s, len);
         }
         else if (enum_idx == MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS)
         {
            return FUNC0(path, label, menu_type, s, len);
         }
         else
         {
            const char *title = FUNC5(enum_idx);

            if (s && !FUNC8(title))
            {
               FUNC7(s, title, len);
               return 1;
            }
         }
      }
   }

   return 0;
}