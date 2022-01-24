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
struct TYPE_5__ {TYPE_1__* content; } ;
struct TYPE_4__ {int data_size; int /*<<< orphan*/ * data; int /*<<< orphan*/  header; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ JPEGRawScan ;
typedef  TYPE_2__ CodedBitstreamUnit ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(CodedBitstreamContext *ctx,
                               CodedBitstreamUnit *unit,
                               PutBitContext *pbc)
{
    JPEGRawScan *scan = unit->content;
    int i, err;

    err = FUNC1(ctx, pbc, &scan->header);
    if (err < 0)
        return err;

    if (scan->data) {
        if (scan->data_size * 8 > FUNC3(pbc))
            return FUNC0(ENOSPC);

        for (i = 0; i < scan->data_size; i++)
            FUNC2(pbc, 8, scan->data[i]);
    }

    return 0;
}