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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  intfstream_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_TOKEN_LEN ; 
 int /*<<< orphan*/  PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

bool FUNC6(intfstream_t *fd, const char *gdi_path,
      char *path, uint64_t max_len)
{
   bool rv         = false;
   char *tmp_token = (char*)FUNC5(MAX_TOKEN_LEN);
   int64_t offset  = -1;

   tmp_token[0]    = '\0';

   /* Skip initial track count */
   offset = FUNC4(fd);
   if (offset == 0)
      FUNC3(fd, tmp_token, MAX_TOKEN_LEN);

   /* Track number */
   FUNC3(fd, tmp_token, MAX_TOKEN_LEN);

   /* Offset */
   FUNC3(fd, tmp_token, MAX_TOKEN_LEN);

   /* Mode */
   FUNC3(fd, tmp_token, MAX_TOKEN_LEN);

   /* Sector size */
   FUNC3(fd, tmp_token, MAX_TOKEN_LEN);

   /* File name */
   if (FUNC3(fd, tmp_token, MAX_TOKEN_LEN) > 0)
   {
      char *gdi_dir   = (char*)FUNC5(PATH_MAX_LENGTH);

      gdi_dir[0]      = '\0';

      FUNC0(gdi_dir, gdi_path, PATH_MAX_LENGTH);

      FUNC1(path, gdi_dir, tmp_token, (size_t)max_len);
      rv = true;

      /* Disc offset */
      FUNC3(fd, tmp_token, MAX_TOKEN_LEN);

      FUNC2(gdi_dir);
   }

   FUNC2(tmp_token);
   return rv;
}