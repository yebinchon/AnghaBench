#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  intfstream_t ;
struct TYPE_4__ {int /*<<< orphan*/  track; } ;
struct TYPE_5__ {TYPE_1__ chd; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ intfstream_info_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTFSTREAM_CHD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,unsigned int,unsigned int) ; 

intfstream_t *FUNC4(const char *path,
      unsigned mode, unsigned hints, int32_t track)
{
   intfstream_info_t info;
   intfstream_t *fd = NULL;

   info.type        = INTFSTREAM_CHD;
   info.chd.track   = track;

   fd               = (intfstream_t*)FUNC2(&info);

   if (!fd)
      return NULL;

   if (!FUNC3(fd, path, mode, hints))
      goto error;

   return fd;

error:
   if (fd)
   {
      FUNC1(fd);
      FUNC0(fd);
   }
   return NULL;
}