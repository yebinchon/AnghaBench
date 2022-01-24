#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ awakeme; scalar_t__ ctime; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ job ;

/* Variables and functions */
 int /*<<< orphan*/  JOB_ID_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(const void *a, const void *b) {
    const job *ja = a, *jb = b;

    if (ja->awakeme > jb->awakeme) return 1;
    if (jb->awakeme > ja->awakeme) return -1;
    if (ja->ctime > jb->ctime) return 1;
    if (jb->ctime > ja->ctime) return -1;
    return FUNC0(ja->id,jb->id,JOB_ID_LEN);
}