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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_FALSE ; 
 int /*<<< orphan*/  BROTLI_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BROTLI_BOOL FUNC6(const char* input_path, FILE** f) {
  *f = NULL;
  if (!input_path) {
    *f = FUNC2(FUNC0(STDIN_FILENO), "rb");
    return BROTLI_TRUE;
  }
  *f = FUNC3(input_path, "rb");
  if (!*f) {
    FUNC4(stderr, "failed to open input file [%s]: %s\n",
            FUNC1(input_path), FUNC5(errno));
    return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}