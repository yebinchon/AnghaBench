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
struct TYPE_2__ {int /*<<< orphan*/  thumbnail_system; } ;
typedef  TYPE_1__ stripes_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data, char*s, size_t len)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;
   if (!stripes)
      return;

   if (!FUNC2(stripes->thumbnail_system))
      FUNC0(stripes->thumbnail_system);
   stripes->thumbnail_system = FUNC1(s);
}