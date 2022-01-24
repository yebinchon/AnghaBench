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
struct TYPE_3__ {size_t n; size_t alloc; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ SString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC2 (char const*) ; 

SString FUNC3(const char* str) {
  size_t len = FUNC2(str);

  SString dest = {.n = len, .alloc = len + 1};
  dest.z = FUNC0(1, dest.alloc);
  FUNC1(dest.z, str);

  return dest;
}