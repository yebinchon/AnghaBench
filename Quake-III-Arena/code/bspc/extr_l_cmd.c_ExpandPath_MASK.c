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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* qdir ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 

char *FUNC2 (char *path)
{
	static char full[1024];
	if (!qdir)
		FUNC0 ("ExpandPath called without qdir set");
	if (path[0] == '/' || path[0] == '\\' || path[1] == ':')
		return path;
	FUNC1 (full, "%s%s", qdir, path);
	return full;
}