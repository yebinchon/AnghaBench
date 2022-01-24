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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC2 (int handle)
{
    struct stat	fileinfo;
  
    if (FUNC1 (handle,&fileinfo) == -1)
	FUNC0 (stderr, "Error fstating\n");

    return fileinfo.st_size;
}