#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ref_count; } ;
typedef  TYPE_1__ DescriptorTranslation ;

/* Variables and functions */
 int MAX_OPEN_FILES ; 
 TYPE_1__** __ps2_fdmap ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

DescriptorTranslation *FUNC3(int fd)
{
   DescriptorTranslation *map = NULL;

   FUNC0();

   if (FUNC2(fd))
   {
      /* Correct fd value */
      fd = MAX_OPEN_FILES - fd;
      map = __ps2_fdmap[fd];

      if (map)
         map->ref_count++;
   }

   FUNC1();
   return map;
}