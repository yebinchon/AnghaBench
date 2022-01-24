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
struct Table {size_t nslots; int /*<<< orphan*/  nitems; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Table*,size_t) ; 

__attribute__((used)) static void FUNC2(struct Table* t) {
  size_t new_size = FUNC0(t->nitems);  
  size_t old_size = t->nslots;
  if (new_size < old_size) { FUNC1(t, new_size); }
}