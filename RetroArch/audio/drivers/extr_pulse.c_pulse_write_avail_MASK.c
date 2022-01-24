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
struct TYPE_2__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ pa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(void *data)
{
   size_t length;
   pa_t *pa = (pa_t*)data;

   FUNC2(pa->mainloop);
   length = FUNC1(pa->stream);

   FUNC0(pa->buffer_size); /* Can change spuriously. */
   FUNC3(pa->mainloop);
   return length;
}