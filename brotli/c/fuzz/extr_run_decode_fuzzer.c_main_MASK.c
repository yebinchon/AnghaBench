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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC6 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC10(int argc, char* *argv) {
  if (argc != 2) {
    FUNC5(stderr, "Exactly one argument is expected.\n");
    FUNC1(EXIT_FAILURE);
  }

  FILE* f = FUNC4(argv[1], "r");
  if (!f) {
    FUNC5(stderr, "Failed to open input file.");
    FUNC1(EXIT_FAILURE);
  }

  size_t max_len = 1 << 20;
  unsigned char* tmp = (unsigned char*)FUNC8(max_len);
  size_t len = FUNC6(tmp, 1, max_len, f);
  if (FUNC3(f)) {
    FUNC2(f);
    FUNC5(stderr, "Failed read input file.");
    FUNC1(EXIT_FAILURE);
  }
  /* Make data after the end "inaccessible". */
  unsigned char* data = (unsigned char*)FUNC8(len);
  FUNC9(data, tmp, len);
  FUNC7(tmp);

  FUNC0(data, len);
  FUNC7(data);
  FUNC1(EXIT_SUCCESS);
}