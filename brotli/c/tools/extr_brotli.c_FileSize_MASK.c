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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t FUNC4(const char* path) {
  FILE* f = FUNC1(path, "rb");
  int64_t retval;
  if (f == NULL) {
    return -1;
  }
  if (FUNC2(f, 0L, SEEK_END) != 0) {
    FUNC0(f);
    return -1;
  }
  retval = FUNC3(f);
  if (FUNC0(f) != 0) {
    return -1;
  }
  return retval;
}