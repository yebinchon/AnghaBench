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
struct TYPE_3__ {int elements_count; int /*<<< orphan*/ * elements; } ;
typedef  TYPE_1__ scope_t ;
typedef  int /*<<< orphan*/  element_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int) ; 

element_t *FUNC2(scope_t *scope)
{
   element_t *elem;

   FUNC1((void**)&scope->elements, sizeof(element_t), ++scope->elements_count);

   elem = &scope->elements[scope->elements_count - 1];
   FUNC0(elem, NULL, 0);

   return elem;
}