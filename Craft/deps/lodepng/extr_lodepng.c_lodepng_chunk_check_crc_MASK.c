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
 unsigned int FUNC0 (unsigned char const*) ; 
 unsigned int FUNC1 (unsigned char const*,unsigned int) ; 
 unsigned int FUNC2 (unsigned char const*) ; 

unsigned FUNC3(const unsigned char* chunk)
{
  unsigned length = FUNC0(chunk);
  unsigned CRC = FUNC2(&chunk[length + 8]);
  /*the CRC is taken of the data and the 4 chunk type letters, not the length*/
  unsigned checksum = FUNC1(&chunk[4], length + 4);
  if(CRC != checksum) return 1;
  else return 0;
}