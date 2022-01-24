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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PU_STATIC ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct stat*) ; 
 int FUNC4 (char const*,int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int) ; 

int
FUNC6
( char const*	name,
  byte**	buffer )
{
    int	handle, count, length;
    struct stat	fileinfo;
    byte		*buf;
	
    handle = FUNC4 (name, O_RDONLY | O_BINARY, 0666);
    if (handle == -1)
	FUNC0 ("Couldn't read file %s", name);
    if (FUNC3 (handle,&fileinfo) == -1)
	FUNC0 ("Couldn't read file %s", name);
    length = fileinfo.st_size;
    buf = FUNC1 (length, PU_STATIC, NULL);
    count = FUNC5 (handle, buf, length);
    FUNC2 (handle);
	
    if (count < length)
	FUNC0 ("Couldn't read file %s", name);
		
    *buffer = buf;
    return length;
}