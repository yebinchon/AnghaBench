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
 unsigned int FUNC0 (unsigned char*) ; 
 unsigned int FUNC1 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int) ; 

void FUNC3(unsigned char* chunk)
{
  unsigned length = FUNC0(chunk);
  unsigned CRC = FUNC1(&chunk[4], length + 4);
  FUNC2(chunk + 8 + length, CRC);
}