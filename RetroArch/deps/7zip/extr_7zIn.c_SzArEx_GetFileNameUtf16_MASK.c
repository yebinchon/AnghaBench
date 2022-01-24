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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {size_t* FileNameOffsets; TYPE_1__ FileNames; } ;
typedef  TYPE_2__ CSzArEx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 

size_t FUNC1(const CSzArEx *p, size_t fileIndex, uint16_t *dest)
{
   size_t len = p->FileNameOffsets[fileIndex + 1] - p->FileNameOffsets[fileIndex];
   if (dest != 0)
   {
      size_t i;
      const uint8_t *src = p->FileNames.data + (p->FileNameOffsets[fileIndex] * 2);
      for (i = 0; i < len; i++)
         dest[i] = FUNC0(src + i * 2);
   }
   return len;
}