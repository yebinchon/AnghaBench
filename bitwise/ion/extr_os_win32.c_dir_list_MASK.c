#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct _finddata_t {int dummy; } ;
struct TYPE_7__ {char* base; void* handle; } ;
typedef  TYPE_1__ DirListIter ;

/* Variables and functions */
 int MAX_PATH ; 
 intptr_t FUNC0 (char*,struct _finddata_t*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,struct _finddata_t*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void FUNC7(DirListIter *iter, const char *path) {
    FUNC4(iter, 0, sizeof(*iter));
    FUNC5(iter->base, path);
    char filespec[MAX_PATH];
    FUNC5(filespec, path);
    FUNC6(filespec, "*");
    struct _finddata_t fileinfo;
    intptr_t handle = FUNC0(filespec, &fileinfo);
    iter->handle = (void *)handle;
    FUNC1(iter, handle == -1, &fileinfo);
    if (FUNC2(iter)) {
        FUNC3(iter);
    }
}