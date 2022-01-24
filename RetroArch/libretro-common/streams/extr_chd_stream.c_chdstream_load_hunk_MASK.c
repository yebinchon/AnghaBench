#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {scalar_t__ hunknum; scalar_t__ hunkmem; int /*<<< orphan*/  chd; scalar_t__ swab; } ;
typedef  TYPE_1__ chdstream_t ;
typedef  scalar_t__ chd_error ;
struct TYPE_5__ {int hunkbytes; } ;

/* Variables and functions */
 scalar_t__ CHDERR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC3(chdstream_t *stream, uint32_t hunknum)
{
   chd_error err;
   uint16_t *array;
   uint32_t i;
   uint32_t count;

   if (hunknum == stream->hunknum)
      return true;

   err = FUNC2(stream->chd, hunknum, stream->hunkmem);
   if (err != CHDERR_NONE)
      return false;

   if (stream->swab)
   {
      count = FUNC1(stream->chd)->hunkbytes / 2;
      array = (uint16_t*) stream->hunkmem;
      for (i = 0; i < count; ++i)
         array[i] = FUNC0(array[i]);
   }

   stream->hunknum = hunknum;
   return true;
}