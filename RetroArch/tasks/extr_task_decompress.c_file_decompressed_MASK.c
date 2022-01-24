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
typedef  int /*<<< orphan*/  path ;
struct TYPE_2__ {char* callback_error; int /*<<< orphan*/  target_dir; } ;
typedef  TYPE_1__ decompress_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_ERROR_SIZE ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct archive_extract_userdata*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(const char *name, const char *valid_exts,
   const uint8_t *cdata, unsigned cmode, uint32_t csize, uint32_t size,
   uint32_t crc32, struct archive_extract_userdata *userdata)
{
   char path[PATH_MAX_LENGTH];
   decompress_state_t    *dec = userdata->dec;
   size_t name_len            = FUNC7(name);
   char last_char             = name[name_len - 1];

   path[0] = '\0';

   /* Ignore directories, go to next file. */
   if (last_char == '/' || last_char == '\\')
      return 1;

   /* Make directory */
   FUNC2(path, dec->target_dir, name, sizeof(path));
   FUNC4(path);

   if (!FUNC5(path))
      goto error;

   FUNC2(path, dec->target_dir, name, sizeof(path));

   if (!FUNC1(path, valid_exts,
            cdata, cmode, csize, size, crc32, userdata))
      goto error;

#if 0
   RARCH_LOG("[deflate] Path: %s, CRC32: 0x%x\n", name, crc32);
#endif
   return 1;

error:
   dec->callback_error = (char*)FUNC3(CALLBACK_ERROR_SIZE);
   FUNC6(dec->callback_error, CALLBACK_ERROR_SIZE,
         "Failed to deflate %s.\n", path);

   return 0;
}