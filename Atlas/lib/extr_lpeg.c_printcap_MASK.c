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
struct TYPE_3__ {int idx; int siz; int /*<<< orphan*/  s; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ Capture ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (Capture *cap) {
  FUNC0(cap->kind);
  FUNC1(" (idx: %d - size: %d) -> %p\n", cap->idx, cap->siz, cap->s);
}