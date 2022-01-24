#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ls; TYPE_1__* f; int /*<<< orphan*/  L; } ;
struct TYPE_4__ {int /*<<< orphan*/  linedefined; } ;
typedef  TYPE_2__ FuncState ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (FuncState *fs, int limit, const char *what) {
  const char *msg = (fs->f->linedefined == 0) ?
    FUNC0(fs->L, "main function has more than %d %s", limit, what) :
    FUNC0(fs->L, "function at line %d has more than %d %s",
                            fs->f->linedefined, limit, what);
  FUNC1(fs->ls, msg, 0);
}