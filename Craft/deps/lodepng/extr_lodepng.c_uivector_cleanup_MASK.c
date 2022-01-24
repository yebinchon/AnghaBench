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
struct TYPE_2__ {int /*<<< orphan*/ * data; scalar_t__ allocsize; scalar_t__ size; } ;
typedef  TYPE_1__ uivector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void* p)
{
  ((uivector*)p)->size = ((uivector*)p)->allocsize = 0;
  FUNC0(((uivector*)p)->data);
  ((uivector*)p)->data = NULL;
}