#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ add; int /*<<< orphan*/ * modify_fn; scalar_t__ chunk; int /*<<< orphan*/ * next; } ;
typedef  TYPE_1__ png_modification ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(png_modification *pmm)
{
   FUNC0(pmm, 0, sizeof *pmm);
   pmm->next = NULL;
   pmm->chunk = 0;
   pmm->modify_fn = NULL;
   pmm->add = 0;
   FUNC1(pmm);
}