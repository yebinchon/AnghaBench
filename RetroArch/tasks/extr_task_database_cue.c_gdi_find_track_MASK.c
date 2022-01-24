#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  char intfstream_t ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ intfstream_info_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INTFSTREAM_FILE ; 
 scalar_t__ MAX_TOKEN_LEN ; 
 scalar_t__ PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int FUNC1 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,size_t) ; 

int FUNC13(const char *gdi_path, bool first,
      char *track_path, uint64_t max_len)
{
   int rv;
   intfstream_info_t info;
   char *tmp_token   = (char*)FUNC10(MAX_TOKEN_LEN);
   intfstream_t *fd  = NULL;
   uint64_t largest  = 0;
   int size          = -1;
   int mode          = -1;
   int64_t file_size = -1;

   info.type         = INTFSTREAM_FILE;

   fd                = (intfstream_t*)FUNC8(&info);

   if (!fd)
      goto error;

   if (!FUNC9(fd, gdi_path,
            RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE))
   {
      FUNC0("Could not open GDI file '%s': %s\n", gdi_path,
            FUNC11(errno));
      goto error;
   }

   FUNC0("Parsing GDI file '%s'...\n", gdi_path);

   tmp_token[0] = '\0';

   rv = -EINVAL;

   /* Skip track count */
   FUNC5(fd, tmp_token, MAX_TOKEN_LEN);

   /* Track number */
   while (FUNC5(fd, tmp_token, MAX_TOKEN_LEN) > 0)
   {
      /* Offset */
      if (FUNC5(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }

      /* Mode */
      if (FUNC5(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }
      mode = FUNC1(tmp_token);

      /* Sector size */
      if (FUNC5(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }
      size = FUNC1(tmp_token);

      /* File name */
      if (FUNC5(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }

      /* Check for data track */
      if (!(mode == 0 && size == 2352))
      {
         char *last_file   = (char*)FUNC10(PATH_MAX_LENGTH + 1);
         char *gdi_dir     = (char*)FUNC10(PATH_MAX_LENGTH);

         gdi_dir[0]        = '\0';

         FUNC2(gdi_dir, gdi_path, PATH_MAX_LENGTH);

         FUNC3(last_file,
               gdi_dir, tmp_token, PATH_MAX_LENGTH);
         file_size = FUNC7(last_file);
         if (file_size < 0)
         {
            FUNC4(gdi_dir);
            FUNC4(last_file);
            goto error;
         }

         if ((uint64_t)file_size > largest)
         {
            FUNC12(track_path, last_file, (size_t)max_len);

            rv      = 0;
            largest = file_size;

            if (first)
            {
               FUNC4(gdi_dir);
               FUNC4(last_file);
               goto clean;
            }
         }
         FUNC4(gdi_dir);
         FUNC4(last_file);
      }

      /* Disc offset (not used?) */
      if (FUNC5(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }
   }

clean:
   FUNC4(tmp_token);
   FUNC6(fd);
   FUNC4(fd);
   return rv;

error:
   FUNC4(tmp_token);
   if (fd)
   {
      FUNC6(fd);
      FUNC4(fd);
   }
   return -errno;
}