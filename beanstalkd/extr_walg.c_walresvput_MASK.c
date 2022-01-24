#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Wal ;
struct TYPE_6__ {scalar_t__ body_size; } ;
struct TYPE_7__ {TYPE_2__ r; TYPE_1__* tube; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  Jobrec ;
typedef  TYPE_3__ Job ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(Wal *w, Job *j)
{
    int z = 0;

    // reserve space for the initial job record
    z += sizeof(int);
    z += FUNC1(j->tube->name);
    z += sizeof(Jobrec);
    z += j->r.body_size;

    // plus space for a delete to come later
    z += sizeof(int);
    z += sizeof(Jobrec);

    return FUNC0(w, z);
}