#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct config_entry_list {char* key; void* value; } ;
struct TYPE_4__ {scalar_t__ include_depth; } ;
typedef  TYPE_1__ config_file_t ;
typedef  int /*<<< orphan*/  config_file_cb_t ;

/* Variables and functions */
 scalar_t__ MAX_INCLUDE_DEPTH ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 

__attribute__((used)) static bool FUNC11(config_file_t *conf,
      struct config_entry_list *list, char *line, config_file_cb_t *cb)
{
   char *key       = NULL;
   char *key_tmp   = NULL;
   size_t cur_size = 8;
   size_t idx      = 0;
   char *comment   = FUNC9(line);

   /* Starting line with #include includes config files. */
   if (comment == line)
   {
      comment++;
      if (FUNC10(comment, "include ") == comment)
      {
         char *include_line = comment + FUNC0("include ");
         char *path         = FUNC2(include_line, false);

         if (!path)
            return false;

         if (conf->include_depth >= MAX_INCLUDE_DEPTH)
            FUNC3(stderr, "!!! #include depth exceeded for config. Might be a cycle.\n");
         else
            FUNC1(conf, path, cb);
         FUNC4(path);
      }
   }

   /* Skips to first character. */
   while (FUNC6((int)*line))
      line++;

   key             = (char*)FUNC7(9);

   while (FUNC5((int)*line))
   {
      if (idx == cur_size)
      {
         cur_size *= 2;
         key_tmp   = (char*)FUNC8(key, cur_size + 1);

         if (!key_tmp)
         {
            FUNC4(key);
            return false;
         }

         key = key_tmp;
      }

      key[idx++] = *line++;
   }
   key[idx]      = '\0';
   list->key     = key;

   list->value   = FUNC2(line, true);

   if (!list->value)
   {
      list->key = NULL;
      FUNC4(key);
      return false;
   }

   return true;
}