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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int FUNC0 (char const* const,char* const,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char* const,char const* const,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int const) ; 

int FUNC5(const char *const input, int compressedSize, char *const output, int outputSize) {
  // compressedSize is the size of data after compression.
  if (input[0] == 1) {
    /* It is compressed by LZ4 algorithm */
    const int decompressed_size = FUNC0(input + 1, output, compressedSize - 1, outputSize);
    if (decompressed_size < 0) {
      char msg[128] = {0};
      FUNC4(msg, "decomp_size:%d, Error decompress in LZ4 algorithm!\n", decompressed_size);
      FUNC3(msg);
      FUNC1(EXIT_FAILURE);
    }

    return decompressed_size;
  } else if (input[0] == 0) {
    /* It is not compressed by LZ4 algorithm */
    FUNC2(output, input + 1, compressedSize - 1);
    return compressedSize - 1;
  } else {
    FUNC3("Wrong compressed string indicator!\n");
    FUNC1(EXIT_FAILURE);
  }
}