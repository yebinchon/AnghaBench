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
struct stat {int st_mode; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

void FUNC5(const char* filename)
{
    FUNC4(filename, "foo\n");
    struct stat st;
    FUNC1(0, FUNC3(filename, &st));
    FUNC0(st.st_mode & S_IFREG);
    FUNC2(st.st_mode & S_IFDIR);
}