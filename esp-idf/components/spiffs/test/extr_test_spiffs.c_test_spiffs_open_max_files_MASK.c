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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,size_t) ; 

void FUNC6(const char* filename_prefix, size_t files_count)
{
    FILE** files = FUNC1(files_count, sizeof(FILE*));
    for (size_t i = 0; i < files_count; ++i) {
        char name[32];
        FUNC5(name, sizeof(name), "%s_%d.txt", filename_prefix, i);
        files[i] = FUNC3(name, "w");
        FUNC0(files[i]);
    }
    /* close everything and clean up */
    for (size_t i = 0; i < files_count; ++i) {
        FUNC2(files[i]);
    }
    FUNC4(files);
}