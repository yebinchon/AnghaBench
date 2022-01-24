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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void  FUNC1( unsigned int num, char offset )
{
  char buffer[ 128 ];	// You're generous. 
  int position = 126;
  unsigned int temp = num;
  int value;

  // Short circuit unnecessary work.
  if ( num == 0 ) 
  {
	FUNC0("0",stdout);
	return;
  }

  buffer[127] = 0;
  
  // Now reduce it.
  while ( temp > 0 )
  {
	value = temp % 16;
	if ( value < 10 ) buffer[ position-- ] = '0' + value;
				else  buffer[ position-- ] = offset - 10 + value;	
	temp = temp / 16;
  }
		  
  // Now print it.
    FUNC0(buffer + position + 1 ,stdout);

}