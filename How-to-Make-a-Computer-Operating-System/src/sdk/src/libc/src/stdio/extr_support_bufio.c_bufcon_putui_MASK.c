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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 

char*  FUNC1( char *buffer, unsigned int num )
{
  unsigned int divisor;
  unsigned int current;
  unsigned int remainder;
  unsigned int found;
 
  current = num;
 
  divisor = 1000000000;
  found = 0;
  
  while (divisor > 0)
  {
    remainder = current % divisor;
      current = current / divisor;

    if ( current != 0 ) found = 1;
    if ( found   != 0 ) FUNC0( buffer, current + '0' );

    divisor = divisor / 10;
    current = remainder;
  }

  if ( found == 0 ) FUNC0( buffer, current + '0' );

  return buffer;
}