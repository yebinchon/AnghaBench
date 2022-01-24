#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v ;
struct TYPE_8__ {int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  Job ;
typedef  TYPE_1__ File ;

/* Variables and functions */
#define  Walver 129 
#define  Walver5 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*,int,int*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(File *f, Job *list)
{
    int err = 0, v;

    if (!FUNC2(f, &v, sizeof(v), &err, "version")) {
        return err;
    }
    switch (v) {
    case Walver:
        FUNC1(f);
        while (FUNC3(f, list, &err));
        FUNC0(f);
        return err;
    case Walver5:
        FUNC1(f);
        while (FUNC4(f, list, &err));
        FUNC0(f);
        return err;
    }

    FUNC5("%s: unknown version: %d", f->path, v);
    return 1;
}