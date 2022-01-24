#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct retro_keybind {scalar_t__ valid; } ;
struct TYPE_6__ {char* input_joypad_driver; } ;
struct TYPE_5__ {char* directory_autoconfig; } ;
struct TYPE_7__ {TYPE_2__ arrays; TYPE_1__ paths; } ;
typedef  TYPE_3__ settings_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 unsigned int RARCH_FIRST_META_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 struct retro_keybind** input_config_binds ; 
 char const* FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 scalar_t__ FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct retro_keybind const*,int) ; 
 scalar_t__* invalid_filename_chars ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (char*) ; 
 char* FUNC17 (char const*) ; 
 char* FUNC18 (char*,scalar_t__) ; 

bool FUNC19(const char *path, unsigned user)
{
   unsigned i;
   config_file_t *conf                  = NULL;
   size_t path_size                     = PATH_MAX_LENGTH * sizeof(char);
   int32_t pid_user                     = 0;
   int32_t vid_user                     = 0;
   bool ret                             = false;
   settings_t *settings                 = FUNC4();
   const char *autoconf_dir             = settings->paths.directory_autoconfig;
   const char *joypad_ident             = settings->arrays.input_joypad_driver;
   char *buf                            = (char*)
      FUNC15(PATH_MAX_LENGTH * sizeof(char));
   char *autoconf_file                  = (char*)
      FUNC15(PATH_MAX_LENGTH * sizeof(char));
   char *path_new                       = FUNC17(path);
   buf[0] = autoconf_file[0]            = '\0';

   for (i = 0; invalid_filename_chars[i]; i++)
   {
      while (1)
      {
         char *tmp = FUNC18(path_new, invalid_filename_chars[i]);

         if (tmp)
            *tmp = '_';
         else
            break;
      }
   }

   path = path_new;

   FUNC7(buf, autoconf_dir, joypad_ident, path_size);

   if (FUNC16(buf))
   {
      char *buf_new = (char*)FUNC15(PATH_MAX_LENGTH * sizeof(char));

      buf_new[0]    = '\0';

      FUNC7(buf_new, buf,
            path, path_size);
      FUNC8(autoconf_file, buf_new,
            ".cfg",
            path_size);

      FUNC9(buf_new);
   }
   else
   {
      FUNC7(buf, autoconf_dir,
            path, path_size);
      FUNC8(autoconf_file, buf,
            ".cfg",
            path_size);
   }

   FUNC9(buf);
   FUNC9(path_new);

   conf = FUNC2(autoconf_file);

   if (!conf)
   {
      conf = FUNC1();
      if (!conf)
      {
         FUNC9(autoconf_file);
         return false;
      }
   }

   FUNC6(conf, "input_driver",
         joypad_ident);
   FUNC6(conf, "input_device",
         FUNC11(user));

   pid_user = FUNC12(user);
   vid_user = FUNC13(user);

   if (pid_user && vid_user)
   {
      FUNC5(conf, "input_vendor_id",
            vid_user);
      FUNC5(conf, "input_product_id",
            pid_user);
   }

   for (i = 0; i < RARCH_FIRST_META_KEY; i++)
   {
      const struct retro_keybind *bind = &input_config_binds[user][i];
      if (bind->valid)
         FUNC14(
               conf, "input", FUNC10(i),
               bind, false);
   }

   ret = FUNC3(conf, autoconf_file, false);

   FUNC0(conf);
   FUNC9(autoconf_file);
   return ret;
}