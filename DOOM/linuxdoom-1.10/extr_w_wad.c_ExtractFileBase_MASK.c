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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4
( char*		path,
  char*		dest )
{
    char*	src;
    int		length;

    src = path + FUNC2(path) - 1;
    
    // back up until a \ or the start
    while (src != path
	   && *(src-1) != '\\'
	   && *(src-1) != '/')
    {
	src--;
    }
    
    // copy up to eight characters
    FUNC1 (dest,0,8);
    length = 0;
    
    while (*src && *src != '.')
    {
	if (++length == 9)
	    FUNC0 ("Filename base of %s >8 chars",path);

	*dest++ = FUNC3((int)*src++);
    }
}