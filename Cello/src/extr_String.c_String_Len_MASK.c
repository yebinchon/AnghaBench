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
typedef  struct String* var ;
struct String {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC1(var self) {
  struct String* s = self;
  return FUNC0(s->val);
}