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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct archive_extract_userdata {TYPE_1__* dec; } ;
typedef  int /*<<< orphan*/  path_dir ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_2__ {char const* subdir; char* callback_error; int /*<<< orphan*/  target_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_ERROR_SIZE ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct archive_extract_userdata*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC7 (char const*) ; 
 char const* FUNC8 (char const*,char const*) ; 

__attribute__((used)) static int FUNC9(const char *name,
      const char *valid_exts,
      const uint8_t *cdata,
      unsigned cmode, uint32_t csize,uint32_t size,
      uint32_t crc32, struct archive_extract_userdata *userdata)
{
   char path_dir[PATH_MAX_LENGTH];
   char path[PATH_MAX_LENGTH];
   size_t name_len            = FUNC7(name);
   char last_char             = name[name_len - 1];

   path_dir[0] = path[0] = '\0';

   /* Ignore directories, go to next file. */
   if (last_char == '/' || last_char == '\\')
      return 1;

   if (FUNC8(name, userdata->dec->subdir) != name)
      return 1;

   name += FUNC7(userdata->dec->subdir) + 1;

   FUNC3(path,
         userdata->dec->target_dir, name, sizeof(path));
   FUNC2(path_dir, path, sizeof(path_dir));

   /* Make directory */
   if (!FUNC5(path_dir))
      goto error;

   if (!FUNC1(path, valid_exts,
            cdata, cmode, csize, size, crc32, userdata))
      goto error;

#if 0
   RARCH_LOG("[deflate subdir] Path: %s, CRC32: 0x%x\n", name, crc32);
#endif

   return 1;

error:
   userdata->dec->callback_error = (char*)FUNC4(CALLBACK_ERROR_SIZE);
   FUNC6(userdata->dec->callback_error,
         CALLBACK_ERROR_SIZE, "Failed to deflate %s.\n", path);

   return 0;
}