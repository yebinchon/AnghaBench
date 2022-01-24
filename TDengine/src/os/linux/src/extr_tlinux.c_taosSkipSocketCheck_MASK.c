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
struct utsname {int /*<<< orphan*/  release; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct utsname*) ; 

bool FUNC3() {
  struct utsname buf;
  if (FUNC2(&buf)) {
    FUNC0("can't fetch os info");
    return false;
  }

  if (FUNC1(buf.release, "Microsoft") != 0) {
    FUNC0("using WSLv1");
    return true;
  }

  return false;
}