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
typedef  int boolean ;

/* Variables and functions */
 int O_BINARY ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int,int) ; 
 int FUNC2 (int,void*,int) ; 

boolean
FUNC3
( char const*	name,
  void*		source,
  int		length )
{
    int		handle;
    int		count;
	
    handle = FUNC1 ( name, O_WRONLY | O_CREAT | O_TRUNC | O_BINARY, 0666);

    if (handle == -1)
	return false;

    count = FUNC2 (handle, source, length);
    FUNC0 (handle);
	
    if (count < length)
	return false;
		
    return true;
}