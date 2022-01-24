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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2(const char *file, int lineno, const char *msg)
{
  FUNC1(stderr, "** %s:%d %s\n", file, lineno, msg);
  FUNC0(stderr);
  /* exit(-1); */
}