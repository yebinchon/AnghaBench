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
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
struct TYPE_2__ {char* file; size_t len; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  VCOS_EINVAL ; 
 int /*<<< orphan*/  VCOS_ENOENT ; 
 int /*<<< orphan*/  VCOS_ENOMEM ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ default_font ; 
 char* fname ; 
 int inited ; 
 size_t FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t,char*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

VCOS_STATUS_T FUNC11(const char *font_dir)
{
   VCOS_STATUS_T ret;
   size_t len;
   int rc;
   if (FUNC9())
   {
      ret = VCOS_ENOMEM;
      goto fail_init;
   }

   int fd = -1;
   // search for the font
   FUNC6(fname, "%s/%s", font_dir, default_font.file);
   fd = FUNC4(fname, O_RDONLY);

   if (fd < 0)
   {
      FUNC0("Could not open font file '%s'", default_font.file);
      ret = VCOS_ENOENT;
      goto fail_open;
   }

   len = FUNC3(fd, 0, SEEK_END);
   FUNC3(fd, 0, SEEK_SET);

   default_font.mem = FUNC8(len, default_font.file);
   if (!default_font.mem)
   {
      FUNC0("No memory for font %s", fname);
      ret = VCOS_ENOMEM;
      goto fail_mem;
   }

   rc = FUNC5(fd, default_font.mem, len);
   if (rc != len)
   {
      FUNC0("Could not read font %s", fname);
      ret = VCOS_EINVAL;
      goto fail_rd;
   }
   default_font.len = len;
   FUNC2(fd);

   FUNC1("Opened font file '%s'", fname);

   inited = 1;
   return VCOS_SUCCESS;

fail_rd:
   FUNC7(default_font.mem);
fail_mem:
   if (fd >= 0) FUNC2(fd);
fail_open:
   FUNC10();
fail_init:
   return ret;
}