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
typedef  enum rbmp_source_type { ____Placeholder_rbmp_source_type } rbmp_source_type ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int RBMP_SOURCE_TYPE_ARGB8888 ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,unsigned int,int) ; 

bool FUNC4(
      const char *filename,
      const void *frame,
      unsigned width, unsigned height,
      unsigned pitch, enum rbmp_source_type type)
{
   bool ret    = false;
   RFILE *file = FUNC2(filename,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   if (!file)
      return false;

   ret = FUNC3(file, width, height, type==RBMP_SOURCE_TYPE_ARGB8888);

   if (ret)
      FUNC0(file, frame, width, height, pitch, type);

   FUNC1(file);

   return ret;
}