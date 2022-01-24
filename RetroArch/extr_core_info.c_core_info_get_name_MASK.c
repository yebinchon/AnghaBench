#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {size_t size; TYPE_1__* elems; } ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_2__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 struct string_list* FUNC4 (char const*,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 

void FUNC10(const char *path, char *s, size_t len,
      const char *path_info, const char *dir_cores,
      const char *exts, bool dir_show_hidden_files,
      bool get_display_name)
{
   size_t i;
   const char       *path_basedir   = !FUNC7(path_info) ?
      path_info : dir_cores;
   struct string_list *contents     = FUNC4(
         dir_cores, exts, false, dir_show_hidden_files, false, false);
   const char *core_path_basename   = FUNC6(path);

   if (!contents)
      return;

   for (i = 0; i < contents->size; i++)
   {
      config_file_t *conf             = NULL;
      char *new_core_name             = NULL;
      const char *current_path        = contents->elems[i].data;

      if (!FUNC8(FUNC6(current_path), core_path_basename))
         continue;

      conf = FUNC2(contents->elems[i].data,
               path_basedir);

      if (!conf)
         continue;

      if (FUNC1(conf, get_display_name 
               ? "display_name" : "corename",
            &new_core_name))
      {
         FUNC9(s, new_core_name, len);
         FUNC5(new_core_name);
      }

      FUNC0(conf);
      break;
   }

   FUNC3(contents);
   contents = NULL;
}