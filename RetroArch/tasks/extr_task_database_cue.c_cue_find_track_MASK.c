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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  char intfstream_t ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ intfstream_info_t ;
typedef  int int64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INTFSTREAM_FILE ; 
 scalar_t__ MAX_TOKEN_LEN ; 
 scalar_t__ PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (char*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (int*,int*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC14(const char *cue_path, bool first,
      uint64_t *offset, uint64_t *size, char *track_path, uint64_t max_len)
{
   int rv;
   intfstream_info_t info;
   char *tmp_token            = (char*)FUNC9(MAX_TOKEN_LEN);
   char *last_file            = (char*)FUNC9(PATH_MAX_LENGTH + 1);
   intfstream_t *fd           = NULL;
   int64_t last_index         = -1;
   int64_t cand_index         = -1;
   int32_t cand_track         = -1;
   int32_t track              = 0;
   uint64_t largest             = 0;
   int64_t volatile file_size = -1;
   bool is_data               = false;
   char *cue_dir              = (char*)FUNC9(PATH_MAX_LENGTH);
   cue_dir[0]                 = '\0';

   FUNC1(cue_dir, cue_path, PATH_MAX_LENGTH);

   info.type        = INTFSTREAM_FILE;
   fd               = (intfstream_t*)FUNC7(&info);

   if (!fd)
      goto error;

   if (!FUNC8(fd, cue_path,
            RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE))
   {
      FUNC0("Could not open CUE file '%s': %s\n", cue_path,
            FUNC11(errno));
      goto error;
   }

   FUNC0("Parsing CUE file '%s'...\n", cue_path);

   tmp_token[0] = '\0';

   rv = -EINVAL;

   while (FUNC4(fd, tmp_token, MAX_TOKEN_LEN) > 0)
   {
      if (FUNC12(tmp_token, "FILE"))
      {
         /* Set last index to last EOF */
         if (file_size != -1)
            last_index = file_size;

         /* We're changing files since the candidate, update it */
         if (FUNC13(&cand_index, &last_index, &largest, last_file, offset,
                         size, track_path, max_len))
         {
            rv = 0;
            if (first)
               goto clean;
         }

         FUNC4(fd, tmp_token, MAX_TOKEN_LEN);
         FUNC2(last_file, cue_dir, tmp_token, PATH_MAX_LENGTH);

         file_size = FUNC6(last_file);

         FUNC4(fd, tmp_token, MAX_TOKEN_LEN);

      }
      else if (FUNC12(tmp_token, "TRACK"))
      {
         FUNC4(fd, tmp_token, MAX_TOKEN_LEN);
         FUNC4(fd, tmp_token, MAX_TOKEN_LEN);
         is_data = !FUNC12(tmp_token, "AUDIO");
         ++track;
      }
      else if (FUNC12(tmp_token, "INDEX"))
      {
         int m, s, f;
         FUNC4(fd, tmp_token, MAX_TOKEN_LEN);
         FUNC4(fd, tmp_token, MAX_TOKEN_LEN);

         if (FUNC10(tmp_token, "%02d:%02d:%02d", &m, &s, &f) < 3)
         {
            FUNC0("Error parsing time stamp '%s'\n", tmp_token);
            goto error;
         }

         last_index = (size_t) (((m * 60 + s) * 75) + f) * 2352;

         /* If we've changed tracks since the candidate, update it */
         if (cand_track != -1 && track != cand_track &&
             FUNC13(&cand_index, &last_index, &largest, last_file, offset,
                         size, track_path, max_len))
         {
            rv = 0;
            if (first)
               goto clean;
         }

         if (!is_data)
            continue;

         if (cand_index == -1)
         {
            cand_index = last_index;
            cand_track = track;
         }
      }
   }

   if (file_size != -1)
      last_index = file_size;

   if (FUNC13(&cand_index, &last_index, &largest, last_file, offset,
                   size, track_path, max_len))
      rv = 0;

clean:
   FUNC3(cue_dir);
   FUNC3(tmp_token);
   FUNC3(last_file);
   FUNC5(fd);
   FUNC3(fd);
   return rv;

error:
   FUNC3(cue_dir);
   FUNC3(tmp_token);
   FUNC3(last_file);
   if (fd)
   {
      FUNC5(fd);
      FUNC3(fd);
   }
   return -errno;
}