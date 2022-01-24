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
typedef  int /*<<< orphan*/  var ;
struct Doc {char const* (* name ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  Doc ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 () ; 
 struct Doc* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char* FUNC3(var type) {
  struct Doc* doc = FUNC2(type, Doc);
  if (doc->name) { return doc->name(); }
  return FUNC0(type);
}