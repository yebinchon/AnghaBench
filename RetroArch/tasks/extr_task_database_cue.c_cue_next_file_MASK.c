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

/* Variables and functions */
 int /*<<< orphan*/  MAX_TOKEN_LEN ; 
 int /*<<< orphan*/  PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

bool FUNC6(intfstream_t *fd,
      const char *cue_path, char *path, uint64_t max_len)
{
   bool rv                    = false;
   char *tmp_token            = (char*)FUNC4(MAX_TOKEN_LEN);
   char *cue_dir              = (char*)FUNC4(PATH_MAX_LENGTH);
   cue_dir[0]                 = '\0';

   FUNC0(cue_dir, cue_path, PATH_MAX_LENGTH);

   tmp_token[0] = '\0';

   while (FUNC3(fd, tmp_token, MAX_TOKEN_LEN) > 0)
   {
      if (FUNC5(tmp_token, "FILE"))
      {
         FUNC3(fd, tmp_token, MAX_TOKEN_LEN);
         FUNC1(path, cue_dir, tmp_token, (size_t)max_len);
         rv = true;
         break;
      }
   }

   FUNC2(cue_dir);
   FUNC2(tmp_token);
   return rv;
}