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
 int FUNC0 (char const* const,char* const,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char* const,char const* const,int) ; 

int FUNC2(const char *const input, int inputSize, char *const output, int outputSize) {
  // Try to compress using LZ4 algorithm.
  const int compressed_data_size = FUNC0(input, output + 1, inputSize, outputSize-1);

  // If cannot compress or after compression, data becomes larger.
  if (compressed_data_size <= 0 || compressed_data_size > inputSize) {
    /* First byte is for indicator */
    output[0] = 0;
    FUNC1(output + 1, input, inputSize);
    return inputSize + 1;
  }

  output[0] = 1;
  return compressed_data_size + 1;
}