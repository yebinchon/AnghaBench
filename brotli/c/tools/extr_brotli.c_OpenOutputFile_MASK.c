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
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 scalar_t__ BROTLI_FALSE ; 
 scalar_t__ BROTLI_TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC4 (char const*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BROTLI_BOOL FUNC6(const char* output_path, FILE** f,
                                  BROTLI_BOOL force) {
  int fd;
  *f = NULL;
  if (!output_path) {
    *f = FUNC2(FUNC0(STDOUT_FILENO), "wb");
    return BROTLI_TRUE;
  }
  fd = FUNC4(output_path, O_CREAT | (force ? 0 : O_EXCL) | O_WRONLY | O_TRUNC,
            S_IRUSR | S_IWUSR);
  if (fd < 0) {
    FUNC3(stderr, "failed to open output file [%s]: %s\n",
            FUNC1(output_path), FUNC5(errno));
    return BROTLI_FALSE;
  }
  *f = FUNC2(fd, "wb");
  if (!*f) {
    FUNC3(stderr, "failed to open output file [%s]: %s\n",
            FUNC1(output_path), FUNC5(errno));
    return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}