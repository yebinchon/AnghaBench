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

/* Variables and functions */
 char ONE_STAGE_COMP ; 
 char TWO_STAGE_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char* const,int const,char* const) ; 
 int /*<<< orphan*/  FUNC2 (char const* const,int,char* const,int) ; 

int FUNC3(const char *const input, int compressedSize, const int nelements, char *const output,
                      int outputSize, char algorithm, char *const buffer, int bufferSize) {
  if (algorithm == ONE_STAGE_COMP) {
    return FUNC1(input, nelements, output);
  } else if (algorithm == TWO_STAGE_COMP) {
    FUNC2(input, compressedSize, buffer, bufferSize);
    return FUNC1(buffer, nelements, output);
  } else {
    FUNC0(0);
  }
}