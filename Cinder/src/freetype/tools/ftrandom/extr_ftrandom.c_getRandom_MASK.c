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
 int FUNC0 () ; 

__attribute__((used)) static int
  FUNC1( int  low,
             int  high )
  {
    if ( low - high < 0x10000L )
      return low + ( ( FUNC0() >> 8 ) % ( high + 1 - low ) );

    return low + ( FUNC0() % ( high + 1 - low ) );
  }