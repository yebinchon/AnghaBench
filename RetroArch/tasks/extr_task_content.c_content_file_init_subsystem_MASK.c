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
struct string_list {scalar_t__ size; } ;
struct retro_subsystem_info {scalar_t__ num_roms; char* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR_LIBRETRO_CORE_REQUIRES_SPECIAL_CONTENT ; 
 int /*<<< orphan*/  RARCH_PATH_SUBSYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct retro_subsystem_info* FUNC1 (struct retro_subsystem_info const*,unsigned int,char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 struct string_list* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,char*,...) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static const struct
retro_subsystem_info *FUNC9(
      const struct retro_subsystem_info *subsystem_data,
      size_t subsystem_current_count,
      char **error_string,
      bool *ret)
{
   size_t path_size                           = 1024 * sizeof(char);
   char *msg                                  = (char*)FUNC2(path_size);
   struct string_list *subsystem              = FUNC5();
   const struct retro_subsystem_info *special = FUNC1(
            subsystem_data, (unsigned)subsystem_current_count,
            FUNC4(RARCH_PATH_SUBSYSTEM));

   msg[0] = '\0';

   if (!special)
   {
      FUNC6(msg, path_size,
            "Failed to find subsystem \"%s\" in libretro implementation.\n",
            FUNC4(RARCH_PATH_SUBSYSTEM));
      *error_string = FUNC7(msg);
      goto error;
   }

   if (special->num_roms && !subsystem)
   {
      FUNC8(msg,
            FUNC3(MSG_ERROR_LIBRETRO_CORE_REQUIRES_SPECIAL_CONTENT),
            path_size
            );
      *error_string = FUNC7(msg);
      goto error;
   }
   else if (special->num_roms && (special->num_roms != subsystem->size))
   {
      FUNC6(msg,
            path_size,
            "Libretro core requires %u content files for "
            "subsystem \"%s\", but %u content files were provided.\n",
            special->num_roms, special->desc,
            (unsigned)subsystem->size);
      *error_string = FUNC7(msg);
      goto error;
   }
   else if (!special->num_roms && subsystem && subsystem->size)
   {
      FUNC6(msg,
            path_size,
            "Libretro core takes no content for subsystem \"%s\", "
            "but %u content files were provided.\n",
            special->desc,
            (unsigned)subsystem->size);
      *error_string = FUNC7(msg);
      goto error;
   }

   *ret = true;
   FUNC0(msg);
   return special;

error:
   *ret = false;
   FUNC0(msg);
   return NULL;
}