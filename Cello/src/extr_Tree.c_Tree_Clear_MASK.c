#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  struct Tree* var ;
struct Tree {int /*<<< orphan*/ * root; scalar_t__ nitems; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Tree*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(var self) {
  struct Tree* m = self;
  FUNC0(m, m->root);
  m->nitems = 0;
  m->root = NULL;
}