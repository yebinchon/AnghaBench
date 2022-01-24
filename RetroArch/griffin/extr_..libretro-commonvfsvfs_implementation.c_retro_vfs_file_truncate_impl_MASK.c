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
struct TYPE_3__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ libretro_vfs_implementation_file ;
typedef  int int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 

int64_t FUNC4(libretro_vfs_implementation_file *stream, int64_t length)
{
   if (!stream)
      return -1;

#ifdef _WIN32
   if (_chsize(_fileno(stream->fp), length) != 0)
      return -1;
#elif !defined(VITA) && !defined(PSP) && !defined(PS2) && !defined(ORBIS) && (!defined(SWITCH) || defined(HAVE_LIBNX))
   if (FUNC3(FUNC2(stream->fp), length) != 0)
      return -1;
#endif

   return 0;
}