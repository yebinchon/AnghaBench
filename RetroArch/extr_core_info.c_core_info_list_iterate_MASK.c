#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static config_file_t *FUNC8(
      const char *current_path,
      const char *path_basedir)
{
   size_t info_path_base_size = PATH_MAX_LENGTH * sizeof(char);
   char *info_path_base       = NULL;
   char *info_path            = NULL;
   config_file_t *conf        = NULL;

   if (!current_path)
      return NULL;

   info_path_base             = (char*)FUNC4(info_path_base_size);

   info_path_base[0] = '\0';

   FUNC1(info_path_base,
         current_path,
         info_path_base_size);

#if defined(RARCH_MOBILE) || (defined(RARCH_CONSOLE) && !defined(PSP) && !defined(_3DS) && !defined(VITA) && !defined(PS2) && !defined(HW_WUP))
   {
      char *substr = strrchr(info_path_base, '_');
      if (substr)
         *substr = '\0';
   }
#endif

   FUNC6(info_path_base, ".info", info_path_base_size);

   info_path = (char*)FUNC4(info_path_base_size);
   FUNC2(info_path,
         path_basedir,
         info_path_base, info_path_base_size);
   FUNC3(info_path_base);
   info_path_base = NULL;

   if (FUNC5(info_path))
      conf = FUNC0(info_path);
   FUNC3(info_path);

   return conf;
}