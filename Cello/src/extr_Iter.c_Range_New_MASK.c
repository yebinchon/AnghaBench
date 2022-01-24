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
typedef  struct Range* var ;
struct Range {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  Int ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Range*,struct Range*) ; 

__attribute__((used)) static void FUNC2(var self, var args) {
  struct Range* r = self;
  r->value = FUNC0(Int);  
  FUNC1(self, args);
}