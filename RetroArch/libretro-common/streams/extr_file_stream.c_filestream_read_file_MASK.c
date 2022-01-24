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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

int64_t FUNC8(const char *path, void **buf, int64_t *len)
{
   int64_t ret              = 0;
   int64_t content_buf_size = 0;
   void *content_buf        = NULL;
   RFILE *file              = FUNC2(path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
   {
      FUNC4(stderr, "Failed to open %s: %s\n", path, FUNC7(errno));
      goto error;
   }

   content_buf_size = FUNC1(file);

   if (content_buf_size < 0)
      goto error;

   content_buf      = FUNC6((size_t)(content_buf_size + 1));

   if (!content_buf)
      goto error;
   if ((int64_t)(uint64_t)(content_buf_size + 1) != (content_buf_size + 1))
      goto error;

   ret = FUNC3(file, content_buf, (int64_t)content_buf_size);
   if (ret < 0)
   {
      FUNC4(stderr, "Failed to read %s: %s\n", path, FUNC7(errno));
      goto error;
   }

   FUNC0(file);

   *buf    = content_buf;

   /* Allow for easy reading of strings to be safe.
    * Will only work with sane character formatting (Unix). */
   ((char*)content_buf)[ret] = '\0';

   if (len)
      *len = ret;

   return 1;

error:
   if (file)
      FUNC0(file);
   if (content_buf)
      FUNC5(content_buf);
   if (len)
      *len = -1;
   *buf = NULL;
   return 0;
}