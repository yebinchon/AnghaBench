#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  intfstream_t ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int writable; TYPE_2__ buf; } ;
struct TYPE_7__ {TYPE_1__ memory; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ intfstream_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTFSTREAM_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

intfstream_t *FUNC4(void *data,
      unsigned mode, unsigned hints, uint64_t size)
{
   intfstream_info_t info;
   intfstream_t *fd     = NULL;

   info.type            = INTFSTREAM_MEMORY;
   info.memory.buf.data = (uint8_t*)data;
   info.memory.buf.size = size;
   info.memory.writable = true;

   fd                   = (intfstream_t*)FUNC2(&info);
   if (!fd)
      return NULL;

   if (!FUNC3(fd, NULL, mode, hints))
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