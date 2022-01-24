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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 

int FUNC2(const char *path) {
   struct stat statbuf;
   if (FUNC1(path, &statbuf) != 0)
       return 0;
   return FUNC0(statbuf.st_mode);
}