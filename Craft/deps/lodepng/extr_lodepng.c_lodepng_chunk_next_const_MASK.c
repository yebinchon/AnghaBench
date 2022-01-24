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
 int FUNC0 (unsigned char const*) ; 

const unsigned char* FUNC1(const unsigned char* chunk)
{
  unsigned total_chunk_length = FUNC0(chunk) + 12;
  return &chunk[total_chunk_length];
}